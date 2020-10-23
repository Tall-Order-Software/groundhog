testing
hash
	| startH |

	startH := not ifTrue: [255] ifFalse: [0].

	^children inject: startH into: [:currentHash :child | currentHash bitXor: child hash]
