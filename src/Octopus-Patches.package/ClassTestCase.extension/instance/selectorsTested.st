*Octopus-Patches
selectorsTested
	| literals |
	literals := Set new.
	self class allTestSelectors do: [ :s |
			 self class classAndMethodFor: s do: [ :c :m | 
					literals addAll: (m messages)]  ifAbsent: [self halt] ].
	^ literals asArray sort
	
	"self class
		selectorsAndMethodsDo: [ :s :m | (s beginsWith: 'test')
			ifTrue: [ literals addAll: (m messages)] ]. "