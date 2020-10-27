<h1 align="center">
   code style - TypeScript
</h1>

## About

This sub-package hosts the [TypeScript](https://www.typescriptlang.org/) configuration.

The following versions are available (based on **TypeScript** version and **Angular** version):

-   3.1.x - `@nationalbankbelgium/code-style/tsconfig/3.1.x`
-   3.1.x and Angular 7 - `@nationalbankbelgium/code-style/tsconfig/3.1.x/ng7`
-   3.2.x - `@nationalbankbelgium/code-style/tsconfig/3.2.x`
-   3.2.x and Angular 7 - `@nationalbankbelgium/code-style/tsconfig/3.2.x/ng7`
-   3.3.x - `@nationalbankbelgium/code-style/tsconfig/3.3.x`
-   3.4.x - `@nationalbankbelgium/code-style/tsconfig/3.4.x`
-   3.4.x and Angular 8 - `@nationalbankbelgium/code-style/tsconfig/3.4.x/ng8`
-   3.5.x - `@nationalbankbelgium/code-style/tsconfig/3.5.x`
-   3.5.x and Angular >= 8.2.0 - `@nationalbankbelgium/code-style/tsconfig/3.5.x/ng8`
-   3.6.x - `@nationalbankbelgium/code-style/tsconfig/3.6.x`
-   3.6.x and Angular 9 - `@nationalbankbelgium/code-style/tsconfig/3.6.x/ng9`
-   3.7.x - `@nationalbankbelgium/code-style/tsconfig/3.7.x`
-   3.7.x and Angular 9 - `@nationalbankbelgium/code-style/tsconfig/3.7.x/ng9`

## Usage

Adapt the content of your `tsconfig.json` file as follows:

For TypeScript >= 3.2

```text
{
	"extends": "@nationalbankbelgium/code-style/tsconfig/3.7.x",
	"compilerOptions": {
		// your configuration
	}
}
```

For TypeScript < 3.2

```text
{
	"extends": "./node_modules/@nationalbankbelgium/code-style/tsconfig/3.1.x/tsconfig.json",
	"compilerOptions": {
		// your configuration
	}
}
```

Since TypeScript 3.2, there is a new way to extend a configuration. More information on [TypeScript Wiki](https://github.com/microsoft/TypeScript/wiki/What%27s-new-in-TypeScript#tsconfigjson-inheritance-via-nodejs-packages)
