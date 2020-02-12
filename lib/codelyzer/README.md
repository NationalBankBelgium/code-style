<h1 align="center">
   code style - codelyzer
</h1>

## About

This sub-package hosts the [codelyzer](https://github.com/mgechev/codelyzer) configuration.

To be able to use this config, you need to install `codelyzer`.

The following versions are available (based on **codelyzer** version):

-   4.5.x - `@nationalbankbelgium/code-style/codelyzer/4.5.x`
-   5.0.x - `@nationalbankbelgium/code-style/codelyzer/5.0.x`
-   5.1.x - `@nationalbankbelgium/code-style/codelyzer/5.1.x`
-   5.2.x - `@nationalbankbelgium/code-style/codelyzer/5.2.x`

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
