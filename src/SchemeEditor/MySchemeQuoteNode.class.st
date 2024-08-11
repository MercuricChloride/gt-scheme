Class {
	#name : #MySchemeQuoteNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'quoteToken',
		'form'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeQuoteNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQuote: self
]

{ #category : #generated }
MySchemeQuoteNode >> form [
	^ form
]

{ #category : #generated }
MySchemeQuoteNode >> form: aMySchemeProgramNode [
	self form notNil ifTrue: [ self form parent: nil ].
	form := aMySchemeProgramNode.
	self form notNil ifTrue: [ self form parent: self ]
]

{ #category : #generated }
MySchemeQuoteNode >> nodeVariables [
	^ #(#form)
]

{ #category : #generated }
MySchemeQuoteNode >> quoteToken [
	^ quoteToken
]

{ #category : #generated }
MySchemeQuoteNode >> quoteToken: aSmaCCToken [
	quoteToken := aSmaCCToken
]

{ #category : #generated }
MySchemeQuoteNode >> tokenVariables [
	^ #(#quoteToken)
]
