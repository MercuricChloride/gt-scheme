Class {
	#name : #SchemeScanner,
	#superclass : #SmaCCScanner,
	#category : #SchemeEditor
}

{ #category : #generated }
SchemeScanner >> emptySymbolTokenId [
	^ 15
]

{ #category : #generated }
SchemeScanner >> errorTokenId [
	^ 16
]

{ #category : #generated }
SchemeScanner >> scan1 [
	[ self recordMatch: #(4).
	self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(3 4).
			self step.
			currentCharacter == $" ] whileTrue.
			(currentCharacter isSeparator
				or: [ currentCharacter == Character pageUp
						or: [ currentCharacter between: $( and: $) ] ]) ifTrue: [ ^ self scan2 ].
			^ self scan1 ].
	(currentCharacter isSeparator
		or: [ currentCharacter == Character pageUp
				or: [ currentCharacter between: $( and: $) ] ]) ifTrue: [ ^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
SchemeScanner >> scan2 [
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter == $" ] whileTrue.
			^ self scan2 ].
	true ] whileTrue
]

{ #category : #generated }
SchemeScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $' ifTrue: [ ^ self scanForTokenX2 ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter isDigit ifTrue: [ ^ self scanForTokenX1 ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(6).
			self step.
			currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
				whileTrue.
			^ self reportLastMatch ].
	true ifTrue: [ self scanForTokenX3 ].
	^ self reportLastMatch
]

{ #category : #generated }
SchemeScanner >> scanForTokenX1 [
	[ self recordMatch: #(2 4).
	self step.
	currentCharacter isDigit ] whileTrue.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $') or: [ currentCharacter >= $* ] ] ])
		ifTrue: [ [ self recordMatch: #(4).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $') or: [ currentCharacter >= $* ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SchemeScanner >> scanForTokenX2 [
	self recordMatch: #(4 7).
	self step.
	(currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $') or: [ currentCharacter >= $* ] ] ])
		ifTrue: [ [ self recordMatch: #(4).
			self step.
			currentCharacter <= Character backspace
				or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
						or: [ (currentCharacter between: $! and: $') or: [ currentCharacter >= $* ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SchemeScanner >> scanForTokenX3 [
	[ self recordMatch: #(4).
	self step.
	currentCharacter <= Character backspace
		or: [ (currentCharacter between: (Character value: 14) and: Character arrowDown)
				or: [ (currentCharacter between: $! and: $') or: [ currentCharacter >= $* ] ] ] ]
		whileTrue
]

{ #category : #generated }
SchemeScanner >> tokenActions [
	^ #(nil nil nil nil nil #whitespace)
]
