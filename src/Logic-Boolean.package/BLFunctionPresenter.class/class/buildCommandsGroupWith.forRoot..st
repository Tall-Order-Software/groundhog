commands
buildCommandsGroupWith: presenter forRoot: rootCommandGroup
	"Attach commands appropriate for the current presenter context to rootCommandGroup"

	rootCommandGroup
		register: (self buildContextMenuCommandsGroupWith: presenter).
