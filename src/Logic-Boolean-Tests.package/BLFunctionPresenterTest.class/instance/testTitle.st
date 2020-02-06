tests - displaying
testTitle
	"Confirm my presenter has the correct title"

	presenter openWithSpec.

	self assert: presenter title equals: nil class name
