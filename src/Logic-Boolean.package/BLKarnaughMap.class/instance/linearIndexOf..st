as yet unclassified
linearIndexOf: grayCode 
	"Answer the linear index where I would store grayCode "

	grayCode isFullyQualified
		ifFalse: [self error: 'This gray code corresponds to multiple linear indices'].
	self flag: #toDo.
		"the problem is what if the grayCode isn't in the map already"
	^ map indexOf: grayCode