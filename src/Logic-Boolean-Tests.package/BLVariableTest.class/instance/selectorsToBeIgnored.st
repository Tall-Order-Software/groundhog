coverage
selectorsToBeIgnored
	| testedInSetUp calledByTestedMethods |

	testedInSetUp := #( #named: #named:equals: #on: ).
	calledByTestedMethods := #( #initialize #printOn: ).

	^ super selectorsToBeIgnored, testedInSetUp, calledByTestedMethods
