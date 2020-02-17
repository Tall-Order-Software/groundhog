tests
testPositiveExamples
	"Create specific instances of the class I test"
	| atomOnly nameOnly both |

	atomOnly := self classToBeTested instanceWithAtom.
	self
		deny:   atomOnly atom isNil;
		assert: atomOnly name isNil;
		deny:   atomOnly isNegated.

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
