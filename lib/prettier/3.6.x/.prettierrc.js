module.exports = {
	/**
	 * The line length where Prettier will try wrap.
	 * Default: `80`
	 *
	 * See: https://prettier.io/docs/en/options.html#print-width
	 */
	printWidth: 140,

	/**
	 * Number of spaces per indentation level.
	 * Default: `2`
	 *
	 * See: https://prettier.io/docs/en/options.html#tab-width
	 */
	tabWidth: 4,

	/**
	 * Indent with tabs instead of spaces.
	 * Default: `false`
	 *
	 * https://prettier.io/docs/en/options.html#tabs
	 */
	useTabs: true,

	/**
	 * Print semicolons at the ends of statements.
	 * default: `true`
	 *
	 * See: https://prettier.io/docs/options#semicolons
	 */
	semi: true,

	/**
	 * Use single quotes instead of double quotes.
	 * Default: `false`
	 *
	 * See: https://prettier.io/docs/options#quote-props
	 */
	singleQuote: false,

	/**
	 * Change when properties in objects are quoted.
	 * Default: `"as-needed"`
	 *
	 * See: https://prettier.io/docs/options#quote-props
	 */
	quoteProps: "as-needed",

	/**
	 * Print trailing commas wherever possible when multi-line.
	 * Default: `"es5"`
	 *
	 * See: https://prettier.io/docs/en/options.html#trailing-commas
	 */
	trailingComma: "none",

	/**
	 * Print spaces between brackets.
	 * Default: `true`
	 *
	 * See: https://prettier.io/docs/en/options.html#bracket-spacing
	 */
	bracketSpacing: true,

	/**
	 * How to wrap object literals.
	 * default: `preserve`
	 *
	 * See: https://prettier.io/docs/options#object-wrap
	 */
	objectWrap: "preserve",

	/**
	 * Put the `>` of a multi-line HTML (HTML, JSX, Vue, Angular) element at the end of the last line instead of being
	 * alone on the next line (does not apply to self closing elements).
	 * Default: `false`
	 *
	 * See: https://prettier.io/docs/options#bracket-line
	 */
	bracketSameLine: false,

	/**
	 * Which end of line characters to apply.
	 * Default: `"lf"`
	 *
	 * See: https://prettier.io/docs/en/options.html#end-of-line
	 */
	endOfLine: "auto",

	/**
	 * Include parentheses around a sole arrow function parameter.
	 * Default: `"always"`
	 *
	 * See: https://prettier.io/docs/en/options.html#arrow-function-parentheses
	 */
	arrowParens: "always",

	/**
	 * Control how Prettier formats quoted code embedded in the file.
	 * Default: `"auto"`
	 *
	 * See: https://prettier.io/docs/en/options.html#embedded-language-formatting
	 */
	embeddedLanguageFormatting: "auto",

	/**
	 * Enforce single attribute per line in HTML, Vue and JSX.
	 * Default: `false`
	 *
	 * Valid options:
	 *   - `false` - Do not enforce single attribute per line.
	 *   - `true` - Enforce single attribute per line.
	 *
	 * See: https://prettier.io/docs/en/options#single-attribute-per-line
	 */
	singleAttributePerLine: false,

	overrides: [
		{
			files: "*.{pcss,scss,css,json,md,yml}",
			options: {
				tabWidth: 2,
				useTabs: false
			}
		},
		{
			files: "*.html",
			options: {
				parser: "angular"
			}
		}
	]
};
