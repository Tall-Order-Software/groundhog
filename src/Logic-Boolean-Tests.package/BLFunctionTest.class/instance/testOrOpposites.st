tests
testOrOpposites
	| result |

	result := a \/ notA.

	self
		assert: [ result isOr ];
		assert: result children size equals: 2;
		assert: [ result children includes: a ];
		assert: [ result children includes: notA ]
	
	

