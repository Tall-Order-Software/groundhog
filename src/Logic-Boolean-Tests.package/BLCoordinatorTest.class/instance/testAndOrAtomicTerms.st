tests
testAndOrAtomicTerms
	| result or1 or2 and1 |
	or1 := a \/ b.
	or2 := c \/ d.
	and1 := or1 /\ or2.
	result := and1 atomicTerms.
	self
		assert: result size equals: 4;
		assert: (result includes: a);
		assert: (result includes: b);
		assert: (result includes: c);
		assert: (result includes: d)