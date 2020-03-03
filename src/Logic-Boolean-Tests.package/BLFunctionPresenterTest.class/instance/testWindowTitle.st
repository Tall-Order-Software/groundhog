tests - displaying
testWindowTitle
	"Confirm my presenter passes a windowTitle to its owner when opened standalone."

	presenter openWithSpec.

	self assert: presenter window title equals: presenter windowTitle

