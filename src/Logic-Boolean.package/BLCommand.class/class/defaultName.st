user interaction
defaultName
	"Answer a short name for what my instances do when executed"
	"This name should be:
		- in English
		- a verb clause
		- in the [imperative mood](https://en.wikipedia.org/wiki/Imperative_mood)
		- without a period
		- capitalized like a sentence
		- represented as a String (or String-equivalent)

	The implied receiver of the verb clause is a BLExpression the user selects
	using this instance's context/presenter.

	Good examples of verb clauses in this style, from the class context menu
	in the system browser:
		- Browse test class
		- Generate accessors
		- Copy

	Examples of entries in the class context menu that are not in this style:
		- Class refs.
		- New trait"

	^ self subclassResponsibility
