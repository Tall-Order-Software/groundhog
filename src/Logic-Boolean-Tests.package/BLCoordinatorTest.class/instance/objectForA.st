accessing
objectForA
	"Parameterize object used to create a"
	"Must answer a different instance each time."

	^ { BLVariable on: 'blahblahblah'.
		BLVariable on: 15 }