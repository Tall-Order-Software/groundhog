tests - accessing
testPresenter
	"Confirm the presenter shortcut works"
	| variable |

	"We don't specify a context in setUp, so presenter should start out as nil."
	self assert: command presenter equals: nil.

	"After we specify a context, our 'presenter' should be that context."
	variable := BLAnonymousVariable instanceWithAtom.
	command context: variable.
	self assert: command presenter equals: variable


