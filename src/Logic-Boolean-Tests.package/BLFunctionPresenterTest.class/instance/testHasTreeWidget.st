tests - displaying
testHasTreeWidget
	"Confirm my target contains a tree widget"

	presenter openWithSpec.
	self assert: (presenter owner hasPresenter: presenter tree)
