comparing
hash
	^ (atom hash
			bitXor: name hash)
			bitXor: (not ifTrue: [255] ifFalse: [0])
