tests - accessing
testPresenter
	"Confirm the presenter shortcut works"

	"We don't specify a context in setUp, so presenter should start out as nil."
	self assert: command presenter equals: nil.

	"After we specify a context, our presenter should be a presenter."
	command asSpecCommand.
	self flag: #todo.  "How do we specify a context?"
	self assert: command presenter isPresenter

