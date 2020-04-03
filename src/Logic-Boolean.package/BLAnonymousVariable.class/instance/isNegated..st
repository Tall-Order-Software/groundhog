accessing
isNegated: aBoolean
	"Set whether my sense is inverted."
	
	"not should never be true if atom is a Boolean."
	(atom isBoolean and: aBoolean) 
		ifTrue: [ atom := atom not ]
		ifFalse: [ not := aBoolean ].

	self valueChanged.
	^ not
