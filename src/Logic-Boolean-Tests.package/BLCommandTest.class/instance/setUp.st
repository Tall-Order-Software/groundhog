running
setUp
	"Instantiate a command for test use"

	super setUp.
	command := self classToBeTested new
