*Logic-Boolean
setAnnouncingObject: aDomainObject

	announcingObject := aDomainObject isSpAnnouncingObject ifFalse: [ aDomainObject asValueHolder ] ifTrue: [ aDomainObject ].
	announcingObject whenChangedDo: [ self modelChanged ].
	self modelChanged
	