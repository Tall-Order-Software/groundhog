tests
testPrintOn
	"Print an instance, thereby testing printOn:"
	| negationPhrase uninit |

	negationPhrase := 'NOT' flag: #i18n.

	"Uninitialized instance"
	uninit := self classToBeTested new.
	self
		assert: [ uninit printString includesSubstring: self classToBeTested name ];
		deny:   [ uninit printString includesSubstring: ': ' ];
		assert: [ uninit negated printString includesSubstring: negationPhrase ].

	"Atom only"
	self
		assert: [ a printString includesSubstring: self objectForA printString ];
		deny:   [ a printString includesSubstring: ': ' ];
		assert: [ a negated printString includesSubstring: negationPhrase ].

	"Name only"
	self
		assert: [ c printString includesSubstring: self nameForC printString ];
		deny:   [ c printString includesSubstring: ': ' ];
		assert: [ c negated printString includesSubstring: negationPhrase ].

	"Both"
	self
		assert: [ b printString includesSubstring: self nameForB printString ];
		assert: [ b printString includesSubstring: self objectForB printString ];
		assert: [ b printString includesSubstring: ': ' ];
		assert: [ b negated printString includesSubstring: negationPhrase ]

