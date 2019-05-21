<h1 align="center">
   code style - TypeScript 3.1.x
</h1>

## About

This sub-package hosts the [TypeScript](https://www.typescriptlang.org/) configuration for TypeScript 3.1.x.

## Usage

Adapt the content of your `tsconfig.json` file as follows:

```json
{
	"extends": "./node_modules/@nationalbankbelgium/code-style/tsconfig/3.1.x/tsconfig.json",
	"compilerOptions": {
		// your configuration
	}
}
```

Since TypeScript 3.2, there is a new way to extend a configuration. More information on [TypeScript Wiki](https://github.com/microsoft/TypeScript/wiki/What%27s-new-in-TypeScript#tsconfigjson-inheritance-via-nodejs-packages)
