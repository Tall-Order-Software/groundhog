evaluating
value
	"Answer the result of evaluating me."
	"This will throw MessageNotUnderstood when atom does not evaluate to a Boolean."

	^ self isNegated
		ifFalse: [ atom value ]
		ifTrue: [ 
			atom
				ifNotNil: [ atom value not ]
				ifNil: [ nil ]
		]
