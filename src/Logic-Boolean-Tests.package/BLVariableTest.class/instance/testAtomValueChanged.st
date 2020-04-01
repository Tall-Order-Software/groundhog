tests - updating
testAtomValueChanged
	"Changing the atom of an instance should announce ValueChanged"

	self assert: updateCount equals: 0.
	a whenChangedSend: #update to: self.
	c whenChangedSend: #update to: self.

	"Change an existing atom."
	a atom: self objectForD.
	self assert: updateCount equals: 1.

	"Unset an existing atom."
	a atom: nil.
	self assert: updateCount equals: 2.

	"Set a previously unset atom."
	c atom: self objectForA.
	self assert: updateCount equals: 3
