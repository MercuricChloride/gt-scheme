Class {
	#name : #MySchemeNumberNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'value'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeNumberNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitNumber: self
]

{ #category : #generated }
MySchemeNumberNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
MySchemeNumberNode >> value [
	^ value
]

{ #category : #generated }
MySchemeNumberNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
