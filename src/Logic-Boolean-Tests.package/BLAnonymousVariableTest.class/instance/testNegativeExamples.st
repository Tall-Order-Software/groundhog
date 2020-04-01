tests
testNegativeExamples
	"Create specific instances of the class I test"
	| atomOnly |

	atomOnly := self classToBeTested negatedInstanceWithAtom.
	self
		deny:   atomOnly atom isNil;
		assert: atomOnly isNegated.

