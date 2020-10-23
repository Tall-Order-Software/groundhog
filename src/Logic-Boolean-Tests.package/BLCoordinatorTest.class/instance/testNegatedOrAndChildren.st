tests
testNegatedOrAndChildren
	| result resultChildren or1 and1 result1 result2 and2 |
	and1 := a /\ b.
	and2 := c /\ d.
	or1 := and1 \/ and2.
	result := or1 negated.
	resultChildren := result children.
	result1 := result children first.
	result2 := result children second.
	self
		assert: result isOr;
		assert: resultChildren size equals: 2;
		assert: result1 equals: and1;
		assert: result2 equals: and2