tests
testAndOpposites
	| result |

	result := a /\ notA.

	self
		assert: [ result isAnd ];
		assert: result children size equals: 2;
		assert: [ result children includes: a ];
		assert: [ result children includes: notA ]