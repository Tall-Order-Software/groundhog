instance creation
simplified
	"Answer a simplified version of myself."
	| result |
	
	result := self ifNotNil: [ self asTruthTable equivalentClause ].

	result canHaveChildren
		ifFalse: [ ^ result ].
	result children size = 1
		ifTrue: [ ^children only ].
	^ result