tests - updating
testIsNegatedValueChanged
	"Changing whether an instance is negated should announce ValueChanged"

	self assert: updateCount equals: 0.
	a whenChangedSend: #update to: self.
	d whenChangedSend: #update to: self.

	a isNegated: true.
	self assert: updateCount equals: 1.
	a isNegated: false.
	self assert: updateCount equals: 2.

	d isNegated: false.
	self assert: updateCount equals: 3
