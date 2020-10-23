running
setUp
	"Prepare my test fixture.  Run before each test* method."

	super setUp.

	a := self variableClass on: self objectForA.
	notA := a negated.
	b := self variableClass new.
	c := self variableClass on: self objectForC.
	d := self variableClass on: self objectForD.