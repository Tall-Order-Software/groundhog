initialization
initializePresenters
	notebook := self newNotebook.

	notebook
		addPage: self systemDescriptionPage;
		addPage: self creditsPage 