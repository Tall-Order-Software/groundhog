printing
printOn: aStream
	"Print my details."

	self displayStringOn: aStream.
	children ifNotNil: [  
		aStream nextPutAll: '('.
		children do: [ :function |
			function printOn: aStream ].
		aStream nextPutAll: ')' ] 
