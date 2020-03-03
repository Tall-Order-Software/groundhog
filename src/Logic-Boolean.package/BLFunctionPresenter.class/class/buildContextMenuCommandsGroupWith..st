commands
buildContextMenuCommandsGroupWith: presenter
	"Answer a group of commands that should be displayed in a context menu on my model."

	^ (CmCommandGroup named: self contextMenuCommandsGroupID) asSpecGroup
			register: (self buildItemCommandsGroupWith: presenter);
			yourself
