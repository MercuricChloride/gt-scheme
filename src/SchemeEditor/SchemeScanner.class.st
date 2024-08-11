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
	[ self step.
	currentCharacter == $"
		ifTrue: [ [ self recordMatch: #(3).
			self step.
			currentCharacter == $" ] whileTrue.
			^ self scan1 ].
	true ] whileTrue
]

{ #category : #generated }
SchemeScanner >> scanForToken [
	self step.
	currentCharacter == $" ifTrue: [ ^ self scan1 ].
	currentCharacter == $' ifTrue: [ ^ self recordAndReportMatch: #(7) ].
	currentCharacter == $( ifTrue: [ ^ self recordAndReportMatch: #(1) ].
	currentCharacter == $) ifTrue: [ ^ self recordAndReportMatch: #(5) ].
	currentCharacter isDigit
		ifTrue: [ [ self recordMatch: #(2 4).
			self step.
			currentCharacter isDigit ] whileTrue.
			((currentCharacter between: $A and: $Z)
				or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
				ifTrue: [ [ self recordMatch: #(4).
					self step.
					(currentCharacter between: $0 and: $9)
						or: [ (currentCharacter between: $A and: $Z)
								or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
						whileTrue ].
			^ self reportLastMatch ].
	(currentCharacter isSeparator or: [ currentCharacter == Character pageUp ])
		ifTrue: [ [ self recordMatch: #(6).
			self step.
			currentCharacter isSeparator or: [ currentCharacter == Character pageUp ] ]
				whileTrue.
			^ self reportLastMatch ].
	((currentCharacter between: $A and: $Z)
		or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ])
		ifTrue: [ [ self recordMatch: #(4).
			self step.
			(currentCharacter between: $0 and: $9)
				or: [ (currentCharacter between: $A and: $Z)
						or: [ currentCharacter == $_ or: [ currentCharacter between: $a and: $z ] ] ] ]
				whileTrue ].
	^ self reportLastMatch
]

{ #category : #generated }
SchemeScanner >> tokenActions [
	^ #(nil nil nil nil nil #whitespace)
]
