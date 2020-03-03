tests - updating
testToggleNegatedValueChanged
	"Changing whether an instance is negated should announce ValueChanged"

	self assert: updateCount equals: 0.
	c whenChangedSend: #update to: self.

	c toggleNegated.
	self assert: updateCount equals: 1.

	c toggleNegated.
	self assert: updateCount equals: 2
