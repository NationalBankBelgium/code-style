<h1 align="center">
   code style - codelyzer 5.2.x
</h1>

## About

This sub-package hosts the [codelyzer](https://github.com/mgechev/codelyzer) configuration for version 5.2.x.

To be able to use this config, you need to install `codelyzer`.

## Usage

Adapt the content of your `tslint.json` file as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/codelyzer/5.2.x"],
	"rules": {
		// your rules
	}
}
```
