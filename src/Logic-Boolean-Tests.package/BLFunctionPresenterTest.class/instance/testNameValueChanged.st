tests - updating
testNameValueChanged
	"Confirm that changing a presenter's model changes its tree's model."
	| newName container stringMorph variable |

	variable := BLVariable negatedNamedInstanceWithAtom.
	presenter model: variable.
	presenter openWithSpec.

	"name is showing in presenter."
	"This is a terrible, horrible, no good, very bad, brittle way to test
	 this, but I couldn't find anything better."
	container := presenter tree adapter widget container.
	stringMorph := (container exposedRows at: 1) submorphs anyOne submorphs at: 2.
	self assert: stringMorph contents equals: variable displayString.

	newName := 'I changed your name'.
	variable name: newName.

	"newName is showing in presenter."
	stringMorph := (container exposedRows at: 1) submorphs anyOne submorphs at: 2.
	self assert: stringMorph contents equals: variable displayString
