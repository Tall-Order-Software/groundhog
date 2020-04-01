tests
testPrintOn
	"Print an instance, thereby testing printOn:"
	| negationPhrase |

	negationPhrase := 'NOT' flag: #i18n.

	"Uninitialized instance"
	self
		assert: [ b printString includesSubstring: self classToBeTested name ];
		deny:   [ b printString includesSubstring: ': ' ];
		assert: [ b negated printString includesSubstring: negationPhrase ].

	"Atom only"
	self
		assert: [ a printString includesSubstring: self objectForA printString ];
		deny:   [ a printString includesSubstring: ': ' ];
		assert: [ a negated printString includesSubstring: negationPhrase ].



