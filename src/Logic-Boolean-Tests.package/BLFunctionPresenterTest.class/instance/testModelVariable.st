tests - displaying
testModelVariable
	"Test my target's display of different kinds of Boolean variables"

	| instanceWithAtom namedInstance namedInstanceWithAtom |

	instanceWithAtom := self classToBeTested new
		model: BLVariable instanceWithAtom;
		openWithSpec.
	self assert: instanceWithAtom isDisplayed.
	instanceWithAtom close.
	self deny: instanceWithAtom isDisplayed.

	namedInstance := self classToBeTested new
		model: BLVariable namedInstance;
		openWithSpec.
	self assert: namedInstance isDisplayed.
	namedInstance close.
	self deny: namedInstance isDisplayed.

	namedInstanceWithAtom := self classToBeTested new
		model: BLVariable namedInstanceWithAtom;
		openWithSpec.
	self assert: namedInstanceWithAtom isDisplayed.
	namedInstanceWithAtom close.
	self deny: namedInstanceWithAtom isDisplayed
