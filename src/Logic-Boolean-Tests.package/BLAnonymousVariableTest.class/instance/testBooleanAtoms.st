tests
testBooleanAtoms
	"Atomic terms whose values are Booleans behave differently from atoms of other types."
	| notA |

	"a's atom is a string, so we can set not to false. When we change a's atom 
	 to a Boolean, we may need to correct both not and the atom, because not 
	 should never be true if atom is a Boolean."
	notA := a negated.
	self assert: notA isNegated equals: true.

	notA atom: true.
	self 
		assert: notA atom equals: false;
		assert: notA isNegated equals: false.

	"notA's atom is a Boolean so we should be unable to set not to true."
	notA isNegated: true.
	self 
		assert: notA atom equals: true;
		assert: notA isNegated equals: false.

	"When atom is already a Boolean, not will be false and nothing will happen 
	 when we set it to false again."
	notA isNegated: false.
	self 
		assert: notA atom equals: true;
		assert: notA isNegated equals: false.

	"When we change atom into a Boolean when not is false, atom should be set 
	 directly, just as if it were not a Boolean."
	b atom: self objectForA.
	b atom: false.
	self 
		assert: b atom equals: false;
		assert: b isNegated equals: false
	
