running
setUp
	"Prepare my test fixture.  Run before each test* method."

	super setUp.

	presenter := self classToBeTested new
