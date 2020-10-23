tests
testHashEquivalenceIdentity
	| e notE anotherE notAnotherE |

	e := self classToBeTested on: { a.b }.
	anotherE := self classToBeTested on: { a copy. b copy }.
	notAnotherE := anotherE negated.
	notE := e negated.
	self
		assert: e hash equals: e hash;
		assert: e hash equals: anotherE hash;
		assert: notE hash equals: notAnotherE hash