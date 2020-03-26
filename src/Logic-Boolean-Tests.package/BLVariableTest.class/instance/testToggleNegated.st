tests - accessing
testToggleNegated
	"Test accessors for not instance variable"

	self deny: [ c isNegated ].
	c toggleNegated.
	self assert: [ c isNegated ].
	c toggleNegated.
	self deny: [ c isNegated ]
