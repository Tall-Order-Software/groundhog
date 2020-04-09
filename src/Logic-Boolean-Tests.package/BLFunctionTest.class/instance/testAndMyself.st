tests
testAndMyself
	| result |

	result := a /\ a.

	self
		assert: [result isAnd];
		assert: result children size equals: 2;
		assert: [result children includes: a]