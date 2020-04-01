tests - accessing
testIsNegated
	"Test accessors for not instance variable"

	self deny: [ a isNegated ].
	a isNegated: true.
	self assert: [ a isNegated ].
	a isNegated: false.
	self deny: [ a isNegated ].

	self deny: [ d isNegated ].
	d isNegated: false.
	self deny: [ d isNegated ]

