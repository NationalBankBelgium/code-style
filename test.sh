#!/usr/bin/env bash

set -u -e -o pipefail

readonly currentDir=$(cd $(dirname $0); pwd)
readonly osBasedCurrentDir=$(if command -v cygpath &> /dev/null; then cygpath -w "${currentDir}"; else echo "${currentDir}"; fi)
readonly testFolder=${osBasedCurrentDir}/.tmp/test
readonly libFolder=${osBasedCurrentDir}/lib
readonly prettierFolder=${libFolder}/prettier
readonly stylelintFolder=${libFolder}/stylelint
readonly tsconfigFolder=${libFolder}/tsconfig

source ${currentDir}/scripts/ci/_ghactions-group.sh
source ${currentDir}/util-functions.sh

VERBOSE=false
TRACE=false

logInfo "============================================="
logInfo "Validation of Code-Style configurations"

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
logInfo "============================================="

ghActionsGroupStart "create temporary test folder ${testFolder}" "no-xtrace"
rm -rf ${testFolder}
mkdir -p ${testFolder}
ghActionsGroupEnd "create temporary test folder ${testFolder}"

#ghActionsGroupStart "validate codelyzer configurations" "no-xtrace"
# TSLint configuration cannot be tested. See: https://github.com/palantir/tslint/issues/889
#ghActionsGroupEnd "validate codelyzer configurations"

logInfo "============================================="
logInfo "validate prettier configurations"
logInfo "============================================="
# FIXME Uncomment this once GitHub Actions support nested logs
# See: https://github.community/t5/GitHub-Actions/Feature-Request-Enhancements-to-group-commands-nested-named/m-p/45399
# ghActionsGroupStart "validate prettier configurations" "no-xtrace"
logDebug "get all prettier versions to validate"
PRETTIER_VERSIONS=($(ls ${prettierFolder} | grep "^[0-9]"))
logDebug "PRETTIER_VERSIONS: ${PRETTIER_VERSIONS[*]}"

TEMP_TEST_PRETTIER="${testFolder}/prettier-test.css"
logDebug "create temporary css file: ${TEMP_TEST_PRETTIER}"
touch ${TEMP_TEST_PRETTIER}

for PRETTIER_VERSION in ${PRETTIER_VERSIONS[@]}
do
  ghActionsGroupStart "validate prettier ${PRETTIER_VERSION}" "no-xtrace"
  TEMP_CONFIG_PRETTIER="${testFolder}/prettier-test-file-${PRETTIER_VERSION}.js"
  logDebug "create temporary prettier config file: ${TEMP_CONFIG_PRETTIER}"
  echo "module.exports=require('../../lib/prettier/${PRETTIER_VERSION}/.prettierrc.js');" > ${TEMP_CONFIG_PRETTIER}
  logDebug "run command \"npx --yes prettier@${PRETTIER_VERSION} --config ${TEMP_CONFIG_PRETTIER} --write ${TEMP_TEST_PRETTIER}\""
  testResult=$(npx --yes prettier@${PRETTIER_VERSION} --config ${TEMP_CONFIG_PRETTIER} --write ${TEMP_TEST_PRETTIER} 2>&1)
  if [[ ${testResult} == *"[warn] Ignored unknown"* ]]; then
    logInfo "The prettier configuration contains unknown rules"
    die ${testResult}
  fi
  ghActionsGroupEnd "validate prettier ${PRETTIER_VERSION}"
done
# ghActionsGroupEnd "validate prettier configurations"

logInfo "============================================="
logInfo "validate stylelint configurations"
logInfo "============================================="
# FIXME Uncomment this once GitHub Actions support nested logs
# See: https://github.community/t5/GitHub-Actions/Feature-Request-Enhancements-to-group-commands-nested-named/m-p/45399
#ghActionsGroupStart "validate stylelint configurations" "no-xtrace"
logDebug "get all stylelint versions to validate"
STYLELINT_VERSIONS=($(ls ${stylelintFolder} | grep "^[0-9]"))
logDebug "STYLELINT_VERSIONS: ${STYLELINT_VERSIONS[*]}"

TEMP_TEST_STYLELINT="${testFolder}/stylelint-test.css"
logDebug "create temporary css file: ${TEMP_TEST_STYLELINT}"
touch ${TEMP_TEST_STYLELINT}

for STYLELINT_VERSION in ${STYLELINT_VERSIONS[@]}
do
  ghActionsGroupStart "validate stylelint ${STYLELINT_VERSION}" "no-xtrace"
  TEMP_CONFIG_STYLELINT="${testFolder}/stylelint-test-file-${STYLELINT_VERSION}.json"
  logDebug "create temporary stylelint config file: ${TEMP_CONFIG_STYLELINT}"
  echo "{\"extends\":\"../../lib/stylelint/${STYLELINT_VERSION}/stylelint.config.js\"}" > ${TEMP_CONFIG_STYLELINT}
  logDebug "run command \"npx --yes stylelint@${STYLELINT_VERSION} --config ${TEMP_CONFIG_STYLELINT} ${TEMP_TEST_STYLELINT}\""
  npx --yes stylelint@${STYLELINT_VERSION} --config ${TEMP_CONFIG_STYLELINT} ${TEMP_TEST_STYLELINT}
  ghActionsGroupEnd "validate stylelint ${STYLELINT_VERSION}"
done

#ghActionsGroupEnd "validate stylelint configurations"

logInfo "============================================="
logInfo "validate tsconfig configurations"
logInfo "============================================="
# FIXME Uncomment this once GitHub Actions support nested logs
# See: https://github.community/t5/GitHub-Actions/Feature-Request-Enhancements-to-group-commands-nested-named/m-p/45399
#ghActionsGroupStart "validate tsconfig configurations" "no-xtrace"
logDebug "get all tsconfig versions to validate"
TSCONFIG_VERSIONS=($(ls ${tsconfigFolder} | grep "^[0-9]"))
logDebug "TSCONFIG_VERSIONS: ${TSCONFIG_VERSIONS[*]}"

TEMP_TEST_TSCONFIG="${testFolder}/tsconfig-test.ts"
logDebug "create temporary ts file: ${TEMP_TEST_TSCONFIG}"
touch ${TEMP_TEST_TSCONFIG}

# Function to validate tsconfig with optional ng subfolder
validate_tsconfig() {
  local tsconfig_version=$1
  local ng_version=${2:-}
  
  local config_path temp_config_file validation_label
  
  if [ -z "$ng_version" ]; then
    validation_label="tsconfig ${tsconfig_version}"
    config_path="../../lib/tsconfig/${tsconfig_version}/tsconfig.json"
    temp_config_file="${testFolder}/tsconfig-test-file-${tsconfig_version}.json"
  else
    validation_label="tsconfig ${tsconfig_version}/${ng_version}"
    config_path="../../lib/tsconfig/${tsconfig_version}/${ng_version}/tsconfig.json"
    temp_config_file="${testFolder}/tsconfig-test-file-${tsconfig_version}-${ng_version}.json"
  fi
  
  ghActionsGroupStart "validate ${validation_label}" "no-xtrace"
  logDebug "create temporary tsconfig file: ${temp_config_file}"
  echo "{\"extends\":\"${config_path}\",\"compilerOptions\":{\"baseUrl\":\".\"}}" > ${temp_config_file}
  logDebug "run command \"npx --yes -p typescript@${tsconfig_version} -c 'tsc -p ${temp_config_file}'\""
  npx --yes -p typescript@${tsconfig_version} -c "tsc -p ${temp_config_file}"
  ghActionsGroupEnd "validate ${validation_label}"
}

for TSCONFIG_VERSION in ${TSCONFIG_VERSIONS[@]}
do
  validate_tsconfig ${TSCONFIG_VERSION}

  # Check for ng subfolders and validate them
  NG_SUBFOLDERS=($(ls ${tsconfigFolder}/${TSCONFIG_VERSION} | grep "^ng" || true))
  if [ ${#NG_SUBFOLDERS[@]} -gt 0 ]; then
    logDebug "Found ng subfolders: ${NG_SUBFOLDERS[*]}"
    for NG_SUBFOLDER in ${NG_SUBFOLDERS[@]}
    do        
      validate_tsconfig ${TSCONFIG_VERSION} ${NG_SUBFOLDER}
    done
  fi
done

#ghActionsGroupEnd "validate tsconfig configurations"

#ghActionsGroupEnd "validate tslint configurations" "no-xtrace"
# TSLint configuration cannot be tested. See: https://github.com/palantir/tslint/issues/889
#ghActionsGroupEnd "validate tslint configurations"

# Print return arrows as a log separator
ghActionsGroupReturnArrows
