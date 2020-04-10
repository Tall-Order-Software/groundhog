coverage
selectorsToBeIgnored
	| calledByTestedMethods |

	calledByTestedMethods := #(#= #atomEquivalenceWith: #printOn:).

	^ super selectorsToBeIgnored, calledByTestedMethods