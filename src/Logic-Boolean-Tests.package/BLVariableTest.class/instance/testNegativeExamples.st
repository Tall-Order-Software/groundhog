tests
testNegativeExamples
	"Create specific instances of the class I test"
	| nameOnly both atomOnly|

	super testNegativeExamples.

	atomOnly := self classToBeTested negatedInstanceWithAtom.
	self
		assert: atomOnly name isNil.

	nameOnly := self classToBeTested negatedNamedInstance.
	self
		assert: nameOnly atom isNil;
		deny:   nameOnly name isNil;
		assert: nameOnly isNegated.

	both := self classToBeTested negatedNamedInstanceWithAtom.
	self
		deny:   both atom isNil;
		deny:   both name isNil;
		assert: both isNegated
