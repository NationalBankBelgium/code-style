<h1 align="center">
   code style - TSLint
</h1>

## About

This sub-package hosts the [TSLint](https://palantir.github.io/tslint/) configuration.

The following versions are available (based on **TSLint** version):

-   4.3.x - `@nationalbankbelgium/code-style/tslint/4.3.x`
-   5.10.x - `@nationalbankbelgium/code-style/tslint/5.10.x`
-   5.11.x - `@nationalbankbelgium/code-style/tslint/5.11.x`
-   5.12.x - `@nationalbankbelgium/code-style/tslint/5.12.x`
-   5.13.x - `@nationalbankbelgium/code-style/tslint/5.13.x`
-   5.14.x - `@nationalbankbelgium/code-style/tslint/5.14.x`
-   5.15.x - `@nationalbankbelgium/code-style/tslint/5.15.x`

## Usage

Adapt the content of your `tslint.json` file as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/tslint/5.15.x"],
	"rules": {
		// your rules
	}
}
```
