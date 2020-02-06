tests
testPrintString
	"Print an instance"
	| uninit |

	"Uninitialized instance"
	uninit := self classToBeTested new.
	self
		assert: [ uninit printString includesSubstring: self classToBeTested name ];
		deny:   [ uninit printString includesSubstring: ': ' ].

	"Atom only"
	self
		assert: [ a printString includesSubstring: self objectForA printString ];
		deny:   [ a printString includesSubstring: ': ' ].

	"Name only"
	self
		assert: [ c printString includesSubstring: self nameForC printString ];
		deny:   [ c printString includesSubstring: ': ' ].

	"Both"
	self
		assert: [ b printString includesSubstring: self nameForB printString ];
		assert: [ b printString includesSubstring: self objectForB printString ];
		assert: [ b printString includesSubstring: ': ' ].
