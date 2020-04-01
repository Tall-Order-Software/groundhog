accessing
atom: anObject
	"Change the value of the variable I represent"
	"This value is the Boolean clause I represent.  Usually anObject is a String,
	 but it could be a Block, a BLExpression, some application-specific object,
	 a Boolean, or whatever else the caller wants."
	atom := anObject.
	self valueChanged
