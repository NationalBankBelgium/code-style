<h1 align="center">
   code style - codelyzer 5.1.x
</h1>

## About

This sub-package hosts the [codelyzer](https://github.com/mgechev/codelyzer) configuration for version 5.1.x.

To be able to use this config, you need to install `codelyzer`.

## Usage

Adapt the content of your `tslint.json` file as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/codelyzer/5.1.x"],
	"rules": {
		// your rules
	}
}
```
