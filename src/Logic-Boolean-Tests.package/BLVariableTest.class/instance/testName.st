tests - accessing
testName
	"Change the name of an instance"

	"Set a previously unset name."
	a name: self nameForD.
	self assert: a name equals: self nameForD.

	"Change an existing name."
	d name: self nameForC.
	self assert: d name equals: self nameForC.

	"Unset an existing name."
	c name: nil.
	self assert: c name equals: nil.


