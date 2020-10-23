tests
testInstanceCreation
	"Create an instance of the class I test"
	
	| e f eSubClause |
	
	"No need for an assertion to test whether creating an instance throws an
	 Exception; the test will already be marked as an error if it throws an
	 Exception."
	
	eSubClause := { a.b }.
	e := self classToBeTested on: eSubClause. 
	f := self classToBeTested on: { b.b }.
	
	"Variable's class should be the class we are testing." 
	self assert: e class equals: self classToBeTested.
	
	"Atoms should be in the same order."
	self assert: e children isSequenceable.
	self assert: (e children hasEqualElements: eSubClause).
	
	"Duplicate atoms are allowed" 
	self deny: f children size equals: f atomicTerms size. 