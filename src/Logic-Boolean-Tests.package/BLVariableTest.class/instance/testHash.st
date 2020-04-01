tests
testHash
	"Hash an instance (non-cryptographically)"
	| notC notD |

	super testHash.

	self assert: c hash equals: c hash.
	self assert: d hash equals: d hash.

	notC := c negated.
	notD := d negated.
	self deny: c hash equals: notC hash.
	self deny: d hash equals: notD hash.

	self assert: notC hash equals: notC hash.
	self assert: notD hash equals: notD hash.

	self deny: a hash equals: d hash.
	c name: self nameForD.
	self deny: d hash equals: c hash.
	d atom: self objectForA.
	self deny: a hash equals: d hash.


