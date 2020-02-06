tests - displaying
testTreeTitle
	"Confirm the first column of my tree widget has the correct title"

	presenter openWithSpec.

	self assert: presenter tree columns first title equals: ('Expression' flag: #i18n)
