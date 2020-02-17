printing
printOn: aStream
	"Print my details."

	not ifTrue: [ aStream nextPutAll: ('NOT ' flag: #i18n) ].
	name ifNotNil: [
		name printOn: aStream.
		atom ifNotNil: [ aStream nextPutAll: ': ' ]].
	atom ifNotNil: [ atom printOn: aStream ].
	(name isNil and: [ atom isNil ])
		ifTrue: [ super printOn: aStream ]
