tests
testAndAnd
	| and1 and2 result resultChildren |

	and1 := a /\ b.
	and2 := c /\ d.
	result := and1 /\ and2.
	resultChildren := result children.
	self
		assert: [ result isAnd ];
		assert: resultChildren size equals: 2;
		assert: [ resultChildren includes: and1 ];
		assert: [ resultChildren includes: and2 ]
