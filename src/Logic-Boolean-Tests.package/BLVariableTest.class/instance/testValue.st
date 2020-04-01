tests
testValue
	"Test evaluation"
	"See https://en.wiktionary.org/wiki/actions_speak_louder_than_words"
	| idiom |

	idiom := 'actions speak louder than words' flag: #i18n.

	self
		assert: a value equals: self objectForA;
		assert: d value equals: self objectForD value;
		assert: c value equals: nil;
		assert: (self classToBeTested on: true) value equals: true;
		assert: (self classToBeTested on: false) value equals: false;
		assert: (self classToBeTested on: [ true ]) value equals: true;
		assert: (self classToBeTested on: [ idiom ]) value equals: idiom;

		should: [ a negated value ] raise: MessageNotUnderstood;
		deny:   d negated value equals: self objectForD value;
		assert: c negated value equals: nil;
		assert: (self classToBeTested on: true) negated value equals: false;
		assert: (self classToBeTested on: false) negated value equals: true;
		assert: (self classToBeTested on: [ true ]) negated value equals: false;
		should: [ (self classToBeTested on: [ idiom ]) negated value ] raise: MessageNotUnderstood
