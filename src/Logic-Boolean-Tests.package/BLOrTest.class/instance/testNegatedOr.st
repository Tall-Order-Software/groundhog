tests
testNegatedOr
	| or1 result resultChildren |
	or1 := a \/ b.
	result := or1 negated.
	resultChildren := result children.
	self
		should: [result isOr];
		should: [resultChildren size = 2];
		should: [resultChildren includes: a];
		should: [resultChildren includes: b];
		should: [resultChildren first isNegated = false];
		should: [resultChildren second isNegated = false]