tests - examples
testExamples
	"Confirm that no examples throw exceptions"

  self classToBeTested instanceWithAtom openWithSpec close.
	self classToBeTested namedInstance openWithSpec close.
	self classToBeTested namedInstanceWithAtom openWithSpec close.
	self classToBeTested negatedInstanceWithAtom openWithSpec close.
	self classToBeTested negatedNamedInstance openWithSpec close.
	self classToBeTested negatedNamedInstanceWithAtom openWithSpec close

