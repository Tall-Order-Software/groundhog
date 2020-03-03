tests - displaying
testAboutText
	"Confirm my presenter passes its aboutText to its owner."

	presenter openWithSpec.

	self assert: presenter window aboutText equals: presenter aboutText
