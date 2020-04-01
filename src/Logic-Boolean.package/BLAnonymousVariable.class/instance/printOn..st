printing
printOn: aStream
	"Print my details."

	not ifTrue: [ aStream nextPutAll: ('NOT ' flag: #i18n) ].
	atom 
		ifNotNil: [ atom printOn: aStream ]
		ifNil: [ super printOn: aStream ]

