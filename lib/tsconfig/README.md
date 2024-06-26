<h1 align="center">
   code style - TypeScript
</h1>

## About

This sub-package hosts the [TypeScript](https://www.typescriptlang.org/) configuration.

The following versions are available (based on **TypeScript** version and **Angular** version):

- 3.1.x - `@nationalbankbelgium/code-style/tsconfig/3.1.x`
- 3.1.x and Angular 7 - `@nationalbankbelgium/code-style/tsconfig/3.1.x/ng7`
- 3.2.x - `@nationalbankbelgium/code-style/tsconfig/3.2.x`
- 3.2.x and Angular 7 - `@nationalbankbelgium/code-style/tsconfig/3.2.x/ng7`
- 3.3.x - `@nationalbankbelgium/code-style/tsconfig/3.3.x`
- 3.4.x - `@nationalbankbelgium/code-style/tsconfig/3.4.x`
- 3.4.x and Angular 8 - `@nationalbankbelgium/code-style/tsconfig/3.4.x/ng8`
- 3.5.x - `@nationalbankbelgium/code-style/tsconfig/3.5.x`
- 3.5.x and Angular >= 8.2.0 - `@nationalbankbelgium/code-style/tsconfig/3.5.x/ng8`
- 3.6.x - `@nationalbankbelgium/code-style/tsconfig/3.6.x`
- 3.6.x and Angular 9 - `@nationalbankbelgium/code-style/tsconfig/3.6.x/ng9`
- 3.7.x - `@nationalbankbelgium/code-style/tsconfig/3.7.x`
- 3.7.x and Angular 9 - `@nationalbankbelgium/code-style/tsconfig/3.7.x/ng9`
- 3.8.x - `@nationalbankbelgium/code-style/tsconfig/3.8.x`
- 3.8.x and Angular >= 9.1.0 - `@nationalbankbelgium/code-style/tsconfig/3.8.x/ng9`
- 3.9.x - `@nationalbankbelgium/code-style/tsconfig/3.9.x`
- 3.9.x and Angular 10 - `@nationalbankbelgium/code-style/tsconfig/3.9.x/ng10`
- 4.0.x - `@nationalbankbelgium/code-style/tsconfig/4.0.x`
- 4.0.x and Angular >= 10.1.0 - `@nationalbankbelgium/code-style/tsconfig/4.0.x/ng10`
- 4.1.x - `@nationalbankbelgium/code-style/tsconfig/4.1.x`
- 4.1.x and Angular 11 - `@nationalbankbelgium/code-style/tsconfig/4.1.x/ng11`
- 4.2.x - `@nationalbankbelgium/code-style/tsconfig/4.2.x`
- 4.2.x and Angular 12 - `@nationalbankbelgium/code-style/tsconfig/4.2.x/ng12`
- 4.3.x - `@nationalbankbelgium/code-style/tsconfig/4.3.x`
- 4.3.x and Angular 12.1.0 - `@nationalbankbelgium/code-style/tsconfig/4.3.x/ng12`
- 4.4.x - `@nationalbankbelgium/code-style/tsconfig/4.4.x`
- 4.4.x and Angular 13 - `@nationalbankbelgium/code-style/tsconfig/4.4.x/ng13`
- 4.5.x - `@nationalbankbelgium/code-style/tsconfig/4.5.x`
- 4.5.x and Angular 13 - `@nationalbankbelgium/code-style/tsconfig/4.5.x/ng13`
- 4.6.x - `@nationalbankbelgium/code-style/tsconfig/4.6.x`
- 4.6.x and Angular 13 - `@nationalbankbelgium/code-style/tsconfig/4.6.x/ng13`
- 4.6.x and Angular 14 - `@nationalbankbelgium/code-style/tsconfig/4.6.x/ng14`
- 4.7.x - `@nationalbankbelgium/code-style/tsconfig/4.7.x`
- 4.7.x and Angular 14 - `@nationalbankbelgium/code-style/tsconfig/4.7.x/ng14`
- 4.8.x - `@nationalbankbelgium/code-style/tsconfig/4.8.x`
- 4.8.x and Angular 14 - `@nationalbankbelgium/code-style/tsconfig/4.8.x/ng14`
- 4.8.x and Angular 15 - `@nationalbankbelgium/code-style/tsconfig/4.8.x/ng15`
- 4.9.x - `@nationalbankbelgium/code-style/tsconfig/4.9.x`
- 4.9.x and Angular 15 - `@nationalbankbelgium/code-style/tsconfig/4.9.x/ng15`
- 4.9.x and Angular 16 - `@nationalbankbelgium/code-style/tsconfig/4.9.x/ng16`
- 5.0.x - `@nationalbankbelgium/code-style/tsconfig/5.0.x`
- 5.0.x and Angular 16 - `@nationalbankbelgium/code-style/tsconfig/5.0.x/ng16`
- 5.1.x - `@nationalbankbelgium/code-style/tsconfig/5.1.x`
- 5.1.x and Angular 16 - `@nationalbankbelgium/code-style/tsconfig/5.1.x/ng1

## Usage

Adapt the content of your `tsconfig.json` file as follows:

For TypeScript >= 3.2

```text
{
	"extends": "@nationalbankbelgium/code-style/tsconfig/4.6.x",
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
