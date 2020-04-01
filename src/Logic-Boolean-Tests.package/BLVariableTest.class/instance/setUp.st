running
setUp
	"Prepare my test fixture.  Run before each test* method."

	super setUp.

	c := self classToBeTested named: self nameForC.
	d := self classToBeTested named: self nameForD equals: self objectForD.
	updateCount := 0
