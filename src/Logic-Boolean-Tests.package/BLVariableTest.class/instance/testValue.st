tests
testValue
	"Test evaluation"
	"See https://en.wiktionary.org/wiki/actions_speak_louder_than_words"	
			
	| idiom |
	self assert: a value equals: self objectForA.
	"ObjectForB is time dependent.  This test may fail around noon."
	self assert: b value equals: self objectForB value.
	self assert: c value equals: nil.
	self assert: (self classToBeTested on: true) value equals: true.
	self assert: (self classToBeTested on: false) value equals: false.
	self assert: (self classToBeTested on: [ true ]) value equals: true.
	idiom := 'actions speak louder than words' flag: #i18n.
	self assert: (self classToBeTested on: [ idiom ]) value equals: idiom
