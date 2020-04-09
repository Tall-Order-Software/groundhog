instance creation
\/ aFunction
	"Answer a logical disjunction (or), with myself and aFunction as its children"

	^ self orClass on: { self. aFunction }
		