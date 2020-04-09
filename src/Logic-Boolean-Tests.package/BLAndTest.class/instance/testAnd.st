tests
testAnd
	| result1 result2 result1Children result2Children |

	result1 := a /\ b.
	result2 := b /\ a.
	result1Children := result1 children.
	result2Children := result2 children.
	self
		assert: [result1 isAnd];
		assert: result1Children size equals: 2;
		assert: [result1Children includes: a];
		assert: [result1Children includes: b];
		assert: result1Children asSet equals: result2Children asSet