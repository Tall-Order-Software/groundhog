instance creation
simplified
	"Answer a simplified version of myself."
	| result |

	self flag: #todo.
	self children collect: [ :each | each simplified ].

	result := super simplified.
	result canHaveChildren not
		ifTrue: [ ^ result ].
	result children size = 1
		ifTrue: [ ^ children anyOne ].
	^ result
