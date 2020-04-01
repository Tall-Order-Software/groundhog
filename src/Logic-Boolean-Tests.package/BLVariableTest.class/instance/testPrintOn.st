tests
testPrintOn
	"Print an instance, thereby testing printOn:"
	| negationPhrase |

	negationPhrase := 'NOT' flag: #i18n.

	super testPrintOn.

	"Name only"
	self
		assert: [ c printString includesSubstring: self nameForC printString ];
		deny:   [ c printString includesSubstring: ': ' ];
		assert: [ c negated printString includesSubstring: negationPhrase ].

	"Both"
	self
		assert: [ d printString includesSubstring: self nameForD printString ];
		assert: [ d printString includesSubstring: self objectForD printString ];
		assert: [ d printString includesSubstring: ': ' ];
		assert: [ d negated printString includesSubstring: negationPhrase ]

