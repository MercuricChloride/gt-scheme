Class {
	#name : #MySchemeQuotedSymbolNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'quoteToken',
		'value'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeQuotedSymbolNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitQuotedSymbol: self
]

{ #category : #generated }
MySchemeQuotedSymbolNode >> quoteToken [
	^ quoteToken
]

{ #category : #generated }
MySchemeQuotedSymbolNode >> quoteToken: aSmaCCToken [
	quoteToken := aSmaCCToken
]

{ #category : #generated }
MySchemeQuotedSymbolNode >> tokenVariables [
	^ #(#quoteToken #value)
]

{ #category : #generated }
MySchemeQuotedSymbolNode >> value [
	^ value
]

{ #category : #generated }
MySchemeQuotedSymbolNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
