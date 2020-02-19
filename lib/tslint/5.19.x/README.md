<h1 align="center">
   code style - TSLint 5.19.x
</h1>

## About

This sub-package hosts the [TSLint](https://palantir.github.io/tslint/) configuration for `TSLint` 5.19.x.

## Usage

Adapt the content of your `tslint.json` file as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/tslint/5.19.x"],
	"rules": {
		// your rules
	}
}
```
