<h1 align="center">
   code style - stylelint
</h1>

## About

This sub-package hosts the [stylelint](https://stylelint.io) configuration for stylelint 9.10.x.

To be able to use this config, you need to install `stylelint-config-prettier`.

## Usage

Adapt the content of your `.stylelintrc` file as follows:

```json
{
	"extends": "@nationalbankbelgium/code-style/stylelint/9.10.x",
	"rules": {
		// your rules
	}
}
```
