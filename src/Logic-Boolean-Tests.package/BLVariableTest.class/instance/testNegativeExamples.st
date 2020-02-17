tests
testNegativeExamples
	"Create specific instances of the class I test"
	| atomOnly nameOnly both |

	atomOnly := self classToBeTested negatedInstanceWithAtom.
	self
		deny:   atomOnly atom isNil;
		assert: atomOnly name isNil;
		assert: atomOnly isNegated.

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
