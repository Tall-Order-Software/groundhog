tests - navigation
testFocusOrder
	"Confirm my presenter has a focus order that includes all the subpresenters."

	presenter openWithSpec.

	self assert: presenter focusOrder equals: presenter presenters 