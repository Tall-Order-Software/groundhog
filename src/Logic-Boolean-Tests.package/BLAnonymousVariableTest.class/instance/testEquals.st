tests
testEquals
	"Compare instances"
	| notA |

	self assert: a equals: a.
	self deny: a equals: b.

	notA := a negated.
	self deny: a equals: notA
