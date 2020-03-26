coverage
selectorsToBeIgnored
	| testedInSetUp calledByTestedMethods |

	testedInSetUp := #( #defaultSpec #initializePresenters ).
	calledByTestedMethods := #( #initializeWindow: #modelChanged ).

	^ super selectorsToBeIgnored, testedInSetUp, calledByTestedMethods
