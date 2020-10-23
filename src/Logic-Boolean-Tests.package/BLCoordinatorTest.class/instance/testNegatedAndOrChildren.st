tests
testNegatedAndOrChildren
	| result resultChildren or1 or2 and1 |
	or1 := a \/ b.
	or2 := c \/ d.
	and1 := or1 /\ or2.
	result := and1 negated.
	resultChildren := result children.
	self assert: result isAnd.
	self assert: resultChildren size equals: 2.
	resultChildren do: [ :child | self assert: child isOr ]