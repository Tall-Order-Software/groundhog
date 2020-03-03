tests - displaying
testContextMenu

	"Confirm that there is a context menu."
	self assert: [ presenter tree contextMenu value isMenuPresenter ]

	"We're testing whether the contextMenu has the correct entries when we test
	 each individual command.  See tests - execution."

