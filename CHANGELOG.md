<a name="1.1.1"></a>

## [1.1.1](https://github.com/NationalBankBelgium/code-style/compare/1.1.0...1.1.1) (2020-02-19)

### Bug Fixes

-   **stylelint:** disable incorrecly enabled stylelint rules from stylelint 10.0.x to 13.0.x ([4c9a213](https://github.com/NationalBankBelgium/code-style/commit/4c9a213)), closes [#32](https://github.com/NationalBankBelgium/code-style/issues/32)

<a name="1.1.0"></a>

# [1.1.0](https://github.com/NationalBankBelgium/code-style/compare/1.0.1...1.1.0) (2020-02-18)

### Bug Fixes

-   **stylelint:** remove wrong extend to "stylelint-config-prettier" in stylelint 9.10.x configuration.<br />The `stylelint/9.10.x` config was mistakenly extending from `stylelint-config-prettier` and therefore the `"extends": "stylelint-config-prettier"` has been removed from that config since `code-style` doesn't depend on such library in any way.<br />Please add that yourself in your stylelint config if necessary. ([d6e6431](https://github.com/NationalBankBelgium/code-style/commit/d6e6431)), closes [#17](https://github.com/NationalBankBelgium/code-style/issues/17)
-   **tslint:** remove the rules of TSLint v4.4+ from the 4.3.x subpackage ([33043da](https://github.com/NationalBankBelgium/code-style/commit/33043da)), closes [#14](https://github.com/NationalBankBelgium/code-style/issues/14)

### Features

-   **codelyzer:** add support for codelyzer 5.0.x ([20c79a9](https://github.com/NationalBankBelgium/code-style/commit/20c79a9)), closes [/github.com/mgechev/codelyzer/blob/master/CHANGELOG.md#500-2019-03-27](https://github.com//github.com/mgechev/codelyzer/blob/master/CHANGELOG.md/issues/500-2019-03-27)
-   **codelyzer:** add support for codelyzer 5.1.x ([c27f57d](https://github.com/NationalBankBelgium/code-style/commit/c27f57d))
-   **codelyzer:** add support for codelyzer 5.2.x ([92d35bb](https://github.com/NationalBankBelgium/code-style/commit/92d35bb)), closes [#27](https://github.com/NationalBankBelgium/code-style/issues/27)
-   **stylelint:** add support for stylelint 10.0.x ([08955a5](https://github.com/NationalBankBelgium/code-style/commit/08955a5)), closes [#17](https://github.com/NationalBankBelgium/code-style/issues/17)
-   **stylelint:** add support for stylelint 10.1.x ([e6b09ae](https://github.com/NationalBankBelgium/code-style/commit/e6b09ae))
-   **stylelint:** add support for stylelint 11.0.x ([e8b102a](https://github.com/NationalBankBelgium/code-style/commit/e8b102a))
-   **stylelint:** add support for stylelint 11.1.x ([5698332](https://github.com/NationalBankBelgium/code-style/commit/5698332))
-   **stylelint:** add support for stylelint 12.0.x ([659f4b8](https://github.com/NationalBankBelgium/code-style/commit/659f4b8))
-   **stylelint:** add support for stylelint 13.0.x ([5be3092](https://github.com/NationalBankBelgium/code-style/commit/5be3092))

<a name="1.0.1"></a>

## [1.0.1](https://github.com/NationalBankBelgium/code-style/compare/1.0.0...1.0.1) (2019-06-04)

### Bug Fixes

-   **tsconfig:** remove outDir, baseUrl, rootDir and typeRoots properties from tsconfig files ([4429a38](https://github.com/NationalBankBelgium/code-style/commit/4429a38)), closes [#10](https://github.com/NationalBankBelgium/code-style/issues/10)

<a name="1.0.0"></a>

# [1.0.0](https://github.com/NationalBankBelgium/code-style/compare/1.0.0-rc.2...1.0.0) (2019-05-24)

### Bug Fixes

-   **stylelint:** comment unused rules ([4c5cbb4](https://github.com/NationalBankBelgium/code-style/commit/4c5cbb4))
-   **tsconfig:** wrong usage information in README for TS 3.1.x ([f9c5ea7](https://github.com/NationalBankBelgium/code-style/commit/f9c5ea7))

<a name="1.0.0-rc.2"></a>

# [1.0.0-rc.2](https://github.com/NationalBankBelgium/code-style/compare/1.0.0-rc.1...1.0.0-rc.2) (2019-05-20)

### Bug Fixes

-   **build:** fix travis branches to be able to trigger the release process when there is a tag ([f688d48](https://github.com/NationalBankBelgium/code-style/commit/f688d48))

<a name="1.0.0-rc.1"></a>

# [1.0.0-rc.1](https://github.com/NationalBankBelgium/code-style/compare/1.0.0-rc.0...1.0.0-rc.1) (2019-05-20)

### Bug Fixes

-   **release:** fix expected node version to 10 instead of 8 ([36a70bd](https://github.com/NationalBankBelgium/code-style/commit/36a70bd))

<a name="1.0.0-rc.0"></a>

# [1.0.0-rc.0](https://github.com/NationalBankBelgium/code-style/compare/b0c2f73...1.0.0-rc.0) (2019-05-20)

### Bug Fixes

-   **release:** adapt release-it config to remove/fix deprecated options as from version 10 ([afae9e2](https://github.com/NationalBankBelgium/code-style/commit/afae9e2))

### Features

-   **all:** update copyright year in LICENSE + add comment in tslint-codelyzer ([b0c2f73](https://github.com/NationalBankBelgium/code-style/commit/b0c2f73))
