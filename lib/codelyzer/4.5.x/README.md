<h1 align="center">
   code style - codelyzer 4.5.x
</h1>

## About

This sub-package hosts the [codelyzer](https://github.com/mgechev/codelyzer) configuration for version 4.5.x.

To be able to use this config, you need to install `codelyzer`.

## Usage

Adapt the content of your `tslint.json` file as follows:

```json
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/codelyzer/4.5.x"],
	"rules": {
		// your rules
	}
}
```
