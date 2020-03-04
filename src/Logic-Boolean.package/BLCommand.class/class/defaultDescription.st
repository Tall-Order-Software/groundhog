user interaction
defaultDescription
	"Answer a short description of what my instances do when executed"
	"What does this do?  Why would I want to do that?
	"
	"This description should be:
		- in English
		- in the [imperative mood](https://en.wikipedia.org/wiki/Imperative_mood)
		- without a period
		- capitalized like a sentence
		- represented as a String (or String-equivalent)

	The implied receiver of the verb clause is a BLExpression the user selects
	using this instance's context/presenter.

	Good examples of sentences in this style, from the Pharo toolbar menus:
		- Browse test class
		- Generate accessors
		- Copy

	Examples of entries in the class context menu that are not in this style:
		- Class refs.
		- New trait"

	^ self subclassResponsibility
