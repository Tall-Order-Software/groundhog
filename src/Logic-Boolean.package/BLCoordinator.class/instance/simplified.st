instance creation
simplified
	"Answer a simplified version of myself."
	| result |
	
	result := super simplified.

	result canHaveChildren
		ifFalse: [ ^ result ].
	result children size = 1
		ifTrue: [ ^children anyOne ].
	^ result