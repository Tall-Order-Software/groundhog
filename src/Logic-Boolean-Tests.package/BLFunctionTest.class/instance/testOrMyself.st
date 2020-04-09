tests
testOrMyself
	| result |

	result := a \/ a.

	self
		assert: [ result isOr ];
		assert: result children size equals: 2;
		assert: [ result children includes: a ]
