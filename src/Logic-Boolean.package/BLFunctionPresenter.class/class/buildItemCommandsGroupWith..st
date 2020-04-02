commands
buildItemCommandsGroupWith: presenter
	"Answer a group of commands that apply to the currently selected item."

	^ (CmCommandGroup named: self itemCommandsGroupID) asSpecGroup
			description: ('Commands that affect the selected item.' flag: #i18n);
			register: BLEditVariable forSpec;
			register: self toggleNegatedCommandClass forSpec;
			beDisplayedAsGroup;
			yourself
