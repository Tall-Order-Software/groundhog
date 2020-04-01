tests - instance creation
testAsPositive
	"Test creation of a positive instance (non-negated)"

	self deny: [ a asPositive isNegated ].
	self deny: [ a negated asPositive isNegated ].

	self deny: [ d asPositive isNegated ].
	self deny: [ d negated asPositive isNegated ].

	self deny: [ c asPositive isNegated ].
	self deny: [ c negated asPositive isNegated ]
