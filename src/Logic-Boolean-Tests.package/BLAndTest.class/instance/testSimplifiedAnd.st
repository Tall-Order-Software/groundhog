tests
testSimplifiedAnd
	"By the rules of Boolean logic, a /\ a will always be a"

	self assert: (a /\ a) simplified equals: a.
	self flag: #todo