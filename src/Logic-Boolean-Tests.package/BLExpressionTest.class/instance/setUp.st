running
setUp
	"Prepare my test fixture.  Run before each test* method."

	super setUp.
	self clearRecentAnnouncements.
	updateCount := 0