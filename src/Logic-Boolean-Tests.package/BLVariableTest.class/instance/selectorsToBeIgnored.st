coverage
selectorsToBeIgnored
	| testedInSetUp calledByTestedMethods |

	testedInSetUp := #( #named: #named:equals: #on: ).
	calledByTestedMethods := #( #printOn: ).

	^ super selectorsToBeIgnored, testedInSetUp, calledByTestedMethods
