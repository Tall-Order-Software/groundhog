accessing
model: aBLVariable
	"Update my model and notify my subscribers."

	super model: aBLVariable.
	self modelChanged
