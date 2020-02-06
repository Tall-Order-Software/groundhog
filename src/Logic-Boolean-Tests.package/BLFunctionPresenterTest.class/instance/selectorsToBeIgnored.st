coverage
selectorsToBeIgnored
	| testedInSetUp calledByTestedMethods |

	testedInSetUp := #( #defaultSpec #initializePresenters ).
	calledByTestedMethods := #( #modelChanged ).

	^ super selectorsToBeIgnored, testedInSetUp, calledByTestedMethods