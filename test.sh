#!/usr/bin/env bash

set -u -e -o pipefail

readonly currentDir=$(cd $(dirname $0); pwd)
readonly testFolder=${currentDir}/.tmp/test
readonly libFolder=${currentDir}/lib
readonly prettierFolder=${libFolder}/prettier
readonly stylelintFolder=${libFolder}/stylelint
readonly tsconfigFolder=${libFolder}/tsconfig

export NODE_PATH=${NODE_PATH:-}:${currentDir}/node_modules

source ${currentDir}/scripts/ci/_travis-fold.sh
source ${currentDir}/util-functions.sh

VERBOSE=false
TRACE=false

for ARG in "$@"; do
  case "$ARG" in
    --verbose)
      logInfo "============================================="
      logInfo "Verbose mode enabled!"
      VERBOSE=true
      ;;
    --trace)
      logInfo "============================================="
      logInfo "Trace mode enabled!"
      TRACE=true
      ;;
    *)
      echo "Unknown option $ARG."
      exit 1
      ;;
  esac
done

travisFoldStart "create temporary test folder ${testFolder}" "no-xtrace"
rm -rf ${testFolder}
mkdir -p ${testFolder}
travisFoldEnd "create temporary test folder ${testFolder}"

#travisFoldStart "validate codelyzer configurations" "no-xtrace"
# TSLint configuration cannot be tested. See: https://github.com/palantir/tslint/issues/889
#travisFoldEnd "validate codelyzer configurations"

travisFoldStart "validate prettier configurations" "no-xtrace"
logDebug "get all prettier versions to validate"
PRETTIER_VERSIONS=($(ls ${prettierFolder} | grep "^[0-9]"))
logDebug "PRETTIER_VERSIONS: ${PRETTIER_VERSIONS[*]}"

TEMP_TEST_PRETTIER="${testFolder}/prettier-test.css"
logDebug "create temporary css file: ${TEMP_TEST_PRETTIER}"
touch ${TEMP_TEST_PRETTIER}

for PRETTIER_VERSION in ${PRETTIER_VERSIONS[@]}
do
  travisFoldStart "validate prettier ${PRETTIER_VERSION}" "no-xtrace"
  TEMP_CONFIG_PRETTIER="${testFolder}/prettier-test-file-${PRETTIER_VERSION}.js"
  logDebug "create temporary prettier config file: ${TEMP_CONFIG_PRETTIER}"
  echo "module.exports=require('../../lib/prettier/${PRETTIER_VERSION}/.prettierrc.js');" > ${TEMP_CONFIG_PRETTIER}
  logDebug "run command \"npx prettier@${PRETTIER_VERSION} --config ${TEMP_CONFIG_PRETTIER} --write ${TEMP_TEST_PRETTIER}\""
  testResult=$(npx prettier@${PRETTIER_VERSION} --config ${TEMP_CONFIG_PRETTIER} --write ${TEMP_TEST_PRETTIER} 2>&1)
  if [[ ${testResult} == *"[warn] Ignored unknown"* ]]; then
    logInfo "The prettier configuration contains unknown rules"
    die ${testResult}
  fi
  travisFoldEnd "validate prettier ${PRETTIER_VERSION}"
done
travisFoldEnd "validate prettier configurations"

travisFoldStart "validate stylelint configurations" "no-xtrace"
logDebug "get all stylelint versions to validate"
STYLELINT_VERSIONS=($(ls ${stylelintFolder} | grep "^[0-9]"))
logDebug "STYLELINT_VERSIONS: ${STYLELINT_VERSIONS[*]}"

TEMP_TEST_STYLELINT="${testFolder}/stylelint-test.css"
logDebug "create temporary css file: ${TEMP_TEST_STYLELINT}"
touch ${TEMP_TEST_STYLELINT}

for STYLELINT_VERSION in ${STYLELINT_VERSIONS[@]}
do
  travisFoldStart "validate stylelint ${STYLELINT_VERSION}" "no-xtrace"
  TEMP_CONFIG_STYLELINT="${testFolder}/stylelint-test-file-${STYLELINT_VERSION}.json"
  logDebug "create temporary stylelint config file: ${TEMP_CONFIG_STYLELINT}"
  echo "{\"extends\":\"../../lib/stylelint/${STYLELINT_VERSION}/stylelint.config.js\"}" > ${TEMP_CONFIG_STYLELINT}
  logDebug "run command \"npx stylelint@${STYLELINT_VERSION} --config ${TEMP_CONFIG_STYLELINT} ${TEMP_TEST_STYLELINT}\""
  npx stylelint@${STYLELINT_VERSION} --config ${TEMP_CONFIG_STYLELINT} ${TEMP_TEST_STYLELINT}
  travisFoldEnd "validate stylelint ${STYLELINT_VERSION}"
done

travisFoldEnd "validate stylelint configurations"

travisFoldStart "validate tsconfig configurations" "no-xtrace"
logDebug "get all tsconfig versions to validate"
TSCONFIG_VERSIONS=($(ls ${tsconfigFolder} | grep "^[0-9]"))
logDebug "TSCONFIG_VERSIONS: ${TSCONFIG_VERSIONS[*]}"

TEMP_TEST_TSCONFIG="${testFolder}/tsconfig-test.ts"
logDebug "create temporary ts file: ${TEMP_TEST_TSCONFIG}"
touch ${TEMP_TEST_TSCONFIG}

for TSCONFIG_VERSION in ${TSCONFIG_VERSIONS[@]}
do
  travisFoldStart "validate tsconfig ${TSCONFIG_VERSION}" "no-xtrace"
  TEMP_CONFIG_TSCONFIG="${testFolder}/tsconfig-test-file-${TSCONFIG_VERSION}.json"
  logDebug "create temporary tsconfig file: ${TEMP_CONFIG_TSCONFIG}"
  echo "{\"extends\":\"../../lib/tsconfig/${TSCONFIG_VERSION}/tsconfig.json\",\"compilerOptions\":{\"baseUrl\":\".\"}}" > ${TEMP_CONFIG_TSCONFIG}
  logDebug "run command \"npx typescript@${TSCONFIG_VERSION} -p ${TEMP_CONFIG_TSCONFIG}\""
  npx typescript@${TSCONFIG_VERSION} -p ${TEMP_CONFIG_TSCONFIG}
  travisFoldEnd "validate tsconfig ${TSCONFIG_VERSION}"
done

travisFoldEnd "validate tsconfig configurations"

#travisFoldEnd "validate tslint configurations" "no-xtrace"
# TSLint configuration cannot be tested. See: https://github.com/palantir/tslint/issues/889
#travisFoldEnd "validate tslint configurations"

# Print return arrows as a log separator
travisFoldReturnArrows
