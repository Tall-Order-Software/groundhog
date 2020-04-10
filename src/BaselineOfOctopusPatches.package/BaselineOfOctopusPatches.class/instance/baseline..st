baselines
baseline: spec
    <baseline>

    spec for: #common do: [
        spec
            package: 'Octopus-Patches';
				package: 'Octopus-Patches-Tests' with: [ spec requires: #('Octopus-Patches') ]].