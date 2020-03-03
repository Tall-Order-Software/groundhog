accessing
name: anObject
	"Change my identifier"
	"This variable name is what represents me when a BLExpression is shown as a
	 function.  Usually anObject is a String, but it could be a Character, a
	 Number, some application-specific object, or whatever else the caller wants."
	name := anObject.
	self valueChanged
