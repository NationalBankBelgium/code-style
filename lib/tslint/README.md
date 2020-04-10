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
-   5.16.x - `@nationalbankbelgium/code-style/tslint/5.16.x`
-   5.17.x - `@nationalbankbelgium/code-style/tslint/5.17.x`
-   5.18.x - `@nationalbankbelgium/code-style/tslint/5.18.x`
-   5.19.x - `@nationalbankbelgium/code-style/tslint/5.19.x`
-   5.20.x - `@nationalbankbelgium/code-style/tslint/5.20.x`
-   6.0.x - `@nationalbankbelgium/code-style/tslint/6.0.x`
-   6.1.x - `@nationalbankbelgium/code-style/tslint/6.1.x`

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

## Recommended Additional Configs

We highly recommend using [Prettier](https://prettier.io) to handle all the formatting hassle in your codebase.
In fact `code-style` also provides a Prettier config you can use: [code style - Prettier](../prettier/README.md).

In this case, when using Prettier you would also need an additional TSLint configuration preset: [tslint-config-prettier](https://github.com/prettier/tslint-config-prettier)
to avoid conflicts with this `code-style/tslint` config regarding some formatting related rules.

So make sure to use those configs in your `tslint.json` as follows:

```text
{
	"extends": ["tslint:latest", "whatever config", "@nationalbankbelgium/code-style/tslint/6.1.x", "tslint-config-prettier"],
	"rules": {
		// your rules
	}
}
```

**IMPORTANT: notice that the `tslint-config-prettier` preset is used at the end of the `extends` list. The reason for this is that such preset
overrides any formatting TSLint rule that was enabled by the precedent presets that may conflict with Prettier.**
