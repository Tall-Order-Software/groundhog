initialization
initializePresenters
	"Create & configure presenters to view my model."

	"Instantiate widgets"
	tree := self newTreeTable.

	"Configure widgets"
	tree
		addColumn: (SpStringTableColumn
			title: ('Expression' flag: #i18n)
			evaluated: #displayString);
		contextMenuFromCommandsGroup: [ self rootCommandsGroup / 'Context Menu' ];
		children: [ :anObject | #() ];
		beResizable.

	"Specify focus order"
	self focusOrder add: tree

