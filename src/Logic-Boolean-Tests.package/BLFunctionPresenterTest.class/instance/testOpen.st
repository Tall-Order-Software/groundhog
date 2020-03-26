tests - displaying
testOpen
	"Confirm my target can be opened in this test environment"

	"No need for an assertion to test whether creating an instance throws an
	 Exception; the test will already be marked as an error if it throws an
	 Exception while creating an instance during #setUp."

	"Likewise, no need for an assertion to test whether opening a presenter
	 throws an exception."
	presenter openWithSpec.
	self assert: presenter isDisplayed.

	presenter owner close.
	self deny: presenter isDisplayed
