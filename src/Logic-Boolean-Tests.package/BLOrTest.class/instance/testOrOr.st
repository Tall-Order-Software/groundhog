tests
testOrOr
	| result resultChildren or1 or2 |
	or1 := a \/ b.
	or2 := c \/ d.
	result := or1 \/ or2.
	resultChildren := result children.
	self
		should: [result isOr];
		should: [resultChildren size = 2];
		should: [resultChildren includes: or1];
		should: [resultChildren includes: or2]