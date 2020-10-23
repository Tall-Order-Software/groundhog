tests
testHashEquivalenceDifference
	| e notE f |

	e := self classToBeTested on: { a.b }.
	f := self classToBeTested on: { c.d }.
	notE := e negated. 
	self
		deny: e hash equals: notE hash;
		deny: e hash equals: f hash