tests
testHash
	"Hash an instance (non-cryptographically)"
	| notA notB notC |

	self assert: a hash equals: a hash.
	self assert: b hash equals: b hash.
	self assert: c hash equals: c hash.

	notA := a negated.
	notB := b negated.
	notC := c negated.
	self deny: a hash equals: notA hash.
	self deny: b hash equals: notB hash.
	self deny: c hash equals: notC hash.

	self assert: notA hash equals: notA hash.
	self assert: notB hash equals: notB hash.
	self assert: notC hash equals: notC hash.

	self deny: a hash equals: b hash.
	c name: self nameForB.
	self deny: b hash equals: c hash.
	b atom: self objectForA.
	self deny: a hash equals: b hash.


