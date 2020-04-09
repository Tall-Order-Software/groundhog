comparing
= anObject
	"Answer whether I am equivalent to anObject."

	^ self class = anObject class
		and: [ (self atomEquivalenceWith: anObject)
		and: [ self isNegated = anObject isNegated ]]
