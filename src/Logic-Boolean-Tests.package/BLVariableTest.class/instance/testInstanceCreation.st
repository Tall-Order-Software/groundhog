tests - instance creation
testInstanceCreation
	"Create an instance of the class I test"

	"No need for an assertion to test whether creating an instance throws an
	 Exception; the test will already be marked as an error if it throws an
	 Exception while creating an instance during #setUp."

	"The variable's name & atom (value) should be passed through unchanged."
	self assert: a name equals: nil.
	self assert: a atom equals: self objectForA.

	self assert: d name equals: self nameForD.
	"BlockClosure does not include an equivalence test."
	self assert: d atom printString equals: self objectForD printString.

	self assert: c name equals: self nameForC.
	self assert: c atom equals: nil.
