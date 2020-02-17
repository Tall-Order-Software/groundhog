tests
testEquals
	"Compare instances"
	| notA |

	self assert: a equals: a.
	self deny: a equals: b.

	self assert: b equals: b.

	self assert: c equals: c.

	notA := a negated.
	self deny: a equals: notA
