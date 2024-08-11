Class {
	#name : #MySchemeSymbolNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'value'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeSymbolNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitSymbol: self
]

{ #category : #generated }
MySchemeSymbolNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
MySchemeSymbolNode >> value [
	^ value
]

{ #category : #generated }
MySchemeSymbolNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
