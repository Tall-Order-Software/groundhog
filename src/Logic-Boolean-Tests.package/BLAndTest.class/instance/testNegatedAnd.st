tests
testNegatedAnd
	| result resultChildren |

	result := (a /\ b) negated.
	resultChildren := result children.

	self
		assert: [ result isAnd ];
		assert: [ resultChildren size = 2 ];
		assert: [ resultChildren includes: a ];
		assert: [ resultChildren includes: b ];	
		assert: result isNegated equals: true 
