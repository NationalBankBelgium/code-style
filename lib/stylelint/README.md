<h1 align="center">
   code style - stylelint
</h1>

## About

This sub-package hosts the [stylelint](https://stylelint.io) configuration.

To be able to use this config, you need to install `stylelint-config-prettier`.

The following versions are available (based on **stylelint** version):

-   9.10.x - `@nationalbankbelgium/code-style/stylelint/9.10.x`

## Usage

Adapt the content of your `.stylelintrc` file as follows:

```json
{
	"extends": "@nationalbankbelgium/code-style/stylelint",
	"rules": {
		// your rules
	}
}
```
