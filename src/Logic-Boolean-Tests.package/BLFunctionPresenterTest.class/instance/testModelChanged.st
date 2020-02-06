tests - updating
testModelChanged
	"Confirm that the #modelChanged Announcement arrives when you change the model"
	| namedInstance instanceWithAtom |

	namedInstance := BLVariable namedInstance.
	presenter model: namedInstance.
	self assert: [ presenter tree roots includes: namedInstance ].

	instanceWithAtom := BLVariable instanceWithAtom.
	presenter model: instanceWithAtom.
	self assert: [ presenter tree roots includes: instanceWithAtom ]

