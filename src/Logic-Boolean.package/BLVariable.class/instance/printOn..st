printing
printOn: aStream
	"Print my details."

	not ifTrue: [ aStream nextPutAll: ('NOT ' flag: #i18n) ].
	name ifNotNil: [
		name printOn: aStream.
		atom ifNotNil: [ aStream nextPutAll: ': ' ]].
	atom 
		ifNotNil: [ atom printOn: aStream ]
		ifNil: [  
			name ifNil: [
				not 
					ifTrue: [ aStream nextPutAll: ('initialized yet' flag: #i18n) ]
					ifFalse: [ super printOn: aStream ] ] ]

