tests - updating
testNameValueChanged
	"Changing the name of an instance should announce ValueChanged"

	self assert: updateCount equals: 0.
	a whenChangedSend: #update to: self.
	b whenChangedSend: #update to: self.
	c whenChangedSend: #update to: self.

	"Set a previously unset name."
	a name: self nameForB.
	self assert: updateCount equals: 1.

	"Change an existing name."
	b name: self nameForC.
	self assert: updateCount equals: 2.

	"Unset an existing name."
	c name: nil.
	self assert: updateCount equals: 3
