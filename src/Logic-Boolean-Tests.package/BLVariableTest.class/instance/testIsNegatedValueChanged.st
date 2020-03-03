tests - updating
testIsNegatedValueChanged
	"Changing whether an instance is negated should announce ValueChanged"

	self assert: updateCount equals: 0.
	a whenChangedSend: #update to: self.
	b whenChangedSend: #update to: self.

	a isNegated: true.
	self assert: updateCount equals: 1.
	a isNegated: false.
	self assert: updateCount equals: 2.

	b isNegated: false.
	self assert: updateCount equals: 3
