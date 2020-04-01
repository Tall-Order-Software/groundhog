tests
testPositiveExamples
	"Create specific instances of the class I test"
	| atomOnly nameOnly both |

	super testPositiveExamples.
	atomOnly := self classToBeTested instanceWithAtom.
	self
		assert: atomOnly name isNil.

	nameOnly := self classToBeTested namedInstance.
	self
		assert: nameOnly atom isNil;
		deny:   nameOnly name isNil;
		deny:   nameOnly isNegated.

	both := self classToBeTested namedInstanceWithAtom.
	self
		deny:   both atom isNil;
		deny:   both name isNil;
		deny:   both isNegated
