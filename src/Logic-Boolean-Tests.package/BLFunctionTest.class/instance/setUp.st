running
setUp
	"Prepare my test fixture.  Run before each test* method."

	super setUp.

	a := self classToBeTested on: self objectForA.
	notA := a negated.
	b := self classToBeTested new