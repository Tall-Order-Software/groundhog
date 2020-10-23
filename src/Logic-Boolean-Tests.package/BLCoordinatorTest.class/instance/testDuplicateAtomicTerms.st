tests
testDuplicateAtomicTerms
	| result or1 and1 and2 |
	and1 := a /\ b.
	and2 := c /\ a.
	or1 := and1 \/ and2.
	result := or1 atomicTerms.
	self
		assert: result size equals: 3;
		assert: (result includes: a);
		assert: (result includes: b);
		assert: (result includes: c)