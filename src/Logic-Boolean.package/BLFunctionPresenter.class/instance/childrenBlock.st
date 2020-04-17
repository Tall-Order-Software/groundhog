api-compatibility
childrenBlock
	"Answer the block my tree will use to get the children of a visible function"

	^ [ :function | function 
				ifNotNil: [ 
					function canHaveChildren 
						ifTrue: [ function children ] 
						ifFalse: [ #() ]]
				ifNil: [ #() ]]