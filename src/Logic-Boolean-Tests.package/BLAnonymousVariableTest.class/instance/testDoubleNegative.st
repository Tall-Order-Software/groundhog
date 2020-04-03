tests
testDoubleNegative
	"Not not a should equal a"
	| notA |

	notA := a negated.
	"The following will not be true for Boolean atoms."
	self
		assert: [notA isNegated];
		assert: a atom equals: notA atom;
		deny: [notA negated isNegated]

