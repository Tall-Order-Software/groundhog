tests - updating
testSelectedItem
	"Confirm that selecting an item changing a presenter's model changes its tree's model"

	"By default, no item is selected."
	self deny: presenter hasSelectedItem.
	self assert: presenter selectedItem equals: nil.

	"Selecting an item means that item is the selectedItem."
	"See SpTreeTablePresenterTest and the simulation protocol of SpTreeTablePresenter."
	self flag: #todo.

	"After deselecting everything, no item is selected."
	presenter tree unselectAll.
	self deny: presenter hasSelectedItem.
	self assert: presenter selectedItem equals: nil
