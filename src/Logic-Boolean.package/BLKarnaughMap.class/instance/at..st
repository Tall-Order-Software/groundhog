accessing
at: grayCode 
	"Retrieve value previously stored at grayCode"

	^ map at: (self linearIndexOf: grayCode)
