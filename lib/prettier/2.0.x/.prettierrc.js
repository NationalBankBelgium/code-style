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
	 * Which end of line characters to apply.
	 * Default: `lf`
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
	overrides: [
		{
			files: "*.{pcss,scss,css,json}",
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
		},
		{
			files: "*.yml",
			options: {
				tabWidth: 2,
				useTabs: false
			}
		}
	]
};
