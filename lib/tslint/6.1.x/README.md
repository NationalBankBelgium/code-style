<h1 align="center">
   code style - TSLint 6.1.x
</h1>

## About

This sub-package hosts the [TSLint](https://palantir.github.io/tslint/) configuration for `TSLint` 6.1.x.

## Usage

Adapt the content of your `tslint.json` file as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/tslint/6.1.x"],
	"rules": {
		// your rules
	}
}
```
