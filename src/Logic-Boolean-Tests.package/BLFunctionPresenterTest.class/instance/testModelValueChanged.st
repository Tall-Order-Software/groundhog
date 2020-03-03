tests - updating
testModelValueChanged
	"Confirm that changing a presenter's model changes its tree's model."
	| namedInstance instanceWithAtom |

	namedInstance := BLVariable namedInstance.
	presenter model: namedInstance.
	self assert: [ presenter tree roots includes: namedInstance ].

	instanceWithAtom := BLVariable instanceWithAtom.
	presenter model: instanceWithAtom.
	self assert: [ presenter tree roots includes: instanceWithAtom ].
	self deny: [ presenter tree roots includes: namedInstance ]

