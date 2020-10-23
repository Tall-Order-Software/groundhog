tests
testBecomeOr
	"Changing a AND to an OR via replacement. "
	
	| oldCoordinator newCoordinator parent children |

	oldCoordinator := a /\ b.
	children := oldCoordinator children. 
	parent := c /\ oldCoordinator.
	newCoordinator := oldCoordinator becomeOr. 
	"After replacement the former parents of oldCoordinator, should not include oldCoordinator as a 	child" 
	self deny: ( parent children includes: oldCoordinator ).
	
	"newCoordinator should be a child of former parents of oldCoordinator"
	self assert: ( parent children includes: newCoordinator ). 
	
	"newCoordinator should be an OR"
	self assert: ( newCoordinator isKindOf: BLOr ).
	
	"former children of oldCoordinator should be children of newCoordinator"
	self assert: newCoordinator children equals: children.   
	
	"former children of oldCoordinator should not have oldCoordinator as a parent"
	self deny: (( children  collect: [ :child | child parents ] ) includes: oldCoordinator ).
	