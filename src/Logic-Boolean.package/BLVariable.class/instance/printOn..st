printing
printOn: aStream
	"Print my details."

	name ifNotNil: [
		name printOn: aStream.
		atom ifNotNil: [ aStream nextPutAll: ': ' ]].
	atom ifNotNil: [ atom printOn: aStream ].
	(name isNil and: [ atom isNil ])
		ifTrue: [ super printOn: aStream ]
