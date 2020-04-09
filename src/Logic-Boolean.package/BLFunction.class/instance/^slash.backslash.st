instance creation
/\ aFunction
	"Answer a logical conjunction (and), with myself and aFunction as its children"

	^ self andClass on: { self. aFunction }
		