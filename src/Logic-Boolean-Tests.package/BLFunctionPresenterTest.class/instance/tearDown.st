running
tearDown
	"Clean my fixture before the next test"
	| window |

	window := presenter owner.
	window ifNotNil: [ window close ].

	super tearDown
