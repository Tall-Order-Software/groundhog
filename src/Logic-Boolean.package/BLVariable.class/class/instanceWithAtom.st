examples
instanceWithAtom
	"Answer an instance of me that has an atom, but no name"
	"See https://en.wikipedia.org/wiki/Liar_paradox"
	<sampleInstance>

	^ self on: 'this sentence is false'
