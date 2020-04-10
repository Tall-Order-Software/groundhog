instance creation
simplified
	"Answer a simplified version of myself."

	^ (self atom isBoolean and: [ self isNegated ]) 
			ifTrue: [ self class on: self atom not ]
			ifFalse: [ self ]