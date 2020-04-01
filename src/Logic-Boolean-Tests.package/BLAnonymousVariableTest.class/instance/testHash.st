tests
testHash
	"Hash an instance (non-cryptographically)"
	| notA notB |

	self assert: a hash equals: a hash.
	self assert: b hash equals: b hash.

	notA := a negated.
	notB := b negated.
	self deny: a hash equals: notA hash.
	self deny: b hash equals: notB hash.

	self assert: notA hash equals: notA hash.
	self assert: notB hash equals: notB hash.

	self deny: a hash equals: b hash.
	b atom: self objectForA.
	self assert: a hash equals: b hash.

