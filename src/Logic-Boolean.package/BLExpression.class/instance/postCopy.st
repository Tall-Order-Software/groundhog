copying
postCopy
	"Fix graph links."
	
	super postCopy.
	parents copy 
		do: [:parent | (parent children identityIncludes: self)
				ifFalse: [self removeParent: parent]].