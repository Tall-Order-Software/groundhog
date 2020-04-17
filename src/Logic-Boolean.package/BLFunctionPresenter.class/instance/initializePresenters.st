initialization
initializePresenters
	"Create & configure presenters to view my model."
	| command |

	"Instantiate widgets"
	tree := self newTreeTable.
	command := self class toggleNegatedCommandClass forSpec.
	button := command asButtonPresenter.

	"Configure widgets"
	tree
		addColumn: (SpStringTableColumn
			title: ('Expression' flag: #i18n)
			evaluated: #displayString);
		contextMenuFromCommandsGroup: [ self rootCommandsGroup / 'Context Menu' ];
		children: self childrenBlock;
		beResizable.
	command 
		context: tree.
	button
		state: false.


	"Specify focus order"
	self focusOrder add: tree

