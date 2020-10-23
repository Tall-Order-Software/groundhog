accessing
atomicTerms
	"Answer an OrderedCollection of my atomic terms."
	| result |
	result := OrderedCollection new.
	result add: self asPositive. 
	^ result