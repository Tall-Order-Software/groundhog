comparing
atomEquivalenceWith: anAnonymousVariable
	"Answer whether my atom is equivalent to anAnonymousVariable's atom"
	"This method is intended for use by =."
			
	^ (self atom isBlock 
		and: [ anAnonymousVariable atom isBlock ]) 
			ifTrue: [ self atom asString = anAnonymousVariable atom asString ]
			ifFalse: [ self atom = anAnonymousVariable atom ]