<h1 align="center">
   code style - TypeScript 6.0.x + Angular 22.x
</h1>

## About

This sub-package hosts the [TypeScript](https://www.typescriptlang.org/) configuration for TypeScript 6.0.x and Angular 22.x

It aligns module compilation with Angular 22 (`preserve` modules with `bundler` resolution), enables isolated module compilation, and enables Angular's strict injection, input-access, and template checks.

## Usage

Adapt the content of your `tsconfig.json` file as follows:

```text
{
	"extends": "@nationalbankbelgium/code-style/tsconfig/6.0.x/ng22",
	"compilerOptions": {
		// your configuration
	}
}
```
