tests - updating
testToggleNegatedValueChanged
	"Changing whether an instance is negated should announce ValueChanged"

	self assert: updateCount equals: 0.
	a whenChangedSend: #update to: self.

	a toggleNegated.
	self assert: updateCount equals: 1.

	a toggleNegated.
	self assert: updateCount equals: 2
