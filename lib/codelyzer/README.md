<h1 align="center">
   code style - codelyzer
</h1>

## About

This sub-package hosts the [codelyzer](https://github.com/mgechev/codelyzer) configuration.

To be able to use this config, you need to install `codelyzer`.

The following versions are available (based on **codelyzer** version):

-   4.5.x - `@nationalbankbelgium/code-style/codelyzer/4.5.x`

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
