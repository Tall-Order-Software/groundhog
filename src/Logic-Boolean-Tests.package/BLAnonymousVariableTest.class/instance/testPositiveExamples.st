tests
testPositiveExamples
	"Create specific instances of the class I test"
	| atomOnly |

	atomOnly := self classToBeTested instanceWithAtom.
	self
		deny:   atomOnly atom isNil;
		deny:   atomOnly isNegated
