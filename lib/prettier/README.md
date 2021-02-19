<h1 align="center">
   code style - Prettier
</h1>

## About

This sub-package hosts the [Prettier](https://prettier.io) configuration.

The following versions are available (based on **Prettier** version):

-   1.16.x - `@nationalbankbelgium/code-style/prettier/1.16.x`
-   1.17.x - `@nationalbankbelgium/code-style/prettier/1.17.x`
-   1.18.x - `@nationalbankbelgium/code-style/prettier/1.18.x`
-   1.19.x - `@nationalbankbelgium/code-style/prettier/1.19.x`
-   2.0.x - `@nationalbankbelgium/code-style/prettier/2.0.x`

## Usage

Create a `.prettierrc.js` file and copy the following content inside:

```js
module.exports = require("@nationalbankbelgium/code-style/prettier/2.0.x");
```

## Recommended Additional Configs

In case you are also using [TSLint](https://palantir.github.io/tslint/) as linter for your codebase, either with the config provided by
[code style - TSLint](../tslint/README.md) or with your own configuration, it is highly recommended to add an additional TSLint configuration
preset: [tslint-config-prettier](https://github.com/prettier/tslint-config-prettier) to avoid conflicts with TSLint regarding some formatting related rules.

So make sure to adapt your `tslint.json` as follows:

```text
{
	"extends": ["any tslint preset config", "tslint-config-prettier"],
	"rules": {
		// your rules
	}
}
```

**IMPORTANT: notice that the `tslint-config-prettier` preset is used at the end of the `extends` list. The reason for this is that such preset
overrides any formatting TSLint rule that was enabled by the precedent presets that may conflict with Prettier.**
