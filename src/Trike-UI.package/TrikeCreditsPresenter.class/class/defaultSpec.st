specs
defaultSpec
	^ SpBoxLayout newVertical
		add: (SpBoxLayout newHorizontal
			add: 'Octopus riding a tricycle';
			add: #trikeLogo;
			yourself)
		height: 50;
		yourself