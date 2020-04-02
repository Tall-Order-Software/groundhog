tests - displaying
testToggleNegatedMenuItem
	"Test whether toggleNegated is present or greyed out in the right situations"
  | menuPresenter toggleNegatedCommand window |

	"toggleNegated appears on the menu."
	menuPresenter := presenter rootCommandsGroup asMenuPresenter.
  window := menuPresenter openWithSpec.
	toggleNegatedCommand :=
			(presenter rootCommandsGroup allCommands select: [ :each |
				each name =  presenter class toggleNegatedCommandClass defaultName ]) anyOne.
	self assert: toggleNegatedCommand notNil.
	"entries includes One named BLToggleNegated defaultName"
	"presenter tree contextMenu value menuGroups menuItems"

	"By default, no item is selected.  Therefore toggleNegated is greyed out on
	 the menu."
	self deny: presenter hasSelectedItem.
	self deny: toggleNegatedCommand canBeExecuted.


"Should not appear when an item is not selected."
	"Selecting an item means that toggleNegated is available to "
	"See SpTreeTablePresenterTest and the simulation protocol of
	 SpTreeTablePresenter."
	self flag: #todo.

	"After deselecting everything, no item is selected, and therefore
	 toggleNegated should be greyed out."
	presenter tree unselectAll.
	self deny: presenter hasSelectedItem.
	self should: [ presenter rootCommandsGroup commandOrGroupNamed: 'Selected Item' ]
		raise: NotFound.

	window close
