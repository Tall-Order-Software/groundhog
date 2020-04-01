accessing
isNegated: aBoolean
	"Set whether my sense is inverted."
	not := aBoolean.
	self valueChanged.
	^ not
