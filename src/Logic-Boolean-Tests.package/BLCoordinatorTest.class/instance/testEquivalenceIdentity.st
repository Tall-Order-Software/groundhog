tests
testEquivalenceIdentity
	"Implicitly tests = and atomEquivalenceWith:"
	| e notE anotherE notAnotherE |

	e := self classToBeTested on: { a.b }.
	anotherE := self classToBeTested on: { a copy. b copy }.
	notAnotherE := anotherE negated.
	notE := e negated.
	self
		assert: e equals: e;
		assert: notE equals: notE;
		assert: e equals: anotherE;
		assert: notE equals: notAnotherE;
		assert: e asString equals: e asString;
		assert: notE asString equals: notE asString