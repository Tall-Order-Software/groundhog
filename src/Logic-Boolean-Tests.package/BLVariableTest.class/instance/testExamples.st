tests
testExamples
	"Create specific instances of the class I test"
	| atomOnly nameOnly both |

	atomOnly := self classToBeTested instanceWithAtom.
	self assert: [ atomOnly name isNil ].

	nameOnly := self classToBeTested namedInstance.
	self assert: [ nameOnly atom isNil ].

	both := self classToBeTested namedInstanceWithAtom.
	self assert: [ both name isNotNil ].
