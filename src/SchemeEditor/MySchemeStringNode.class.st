Class {
	#name : #MySchemeStringNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'value'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeStringNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitString: self
]

{ #category : #generated }
MySchemeStringNode >> tokenVariables [
	^ #(#value)
]

{ #category : #generated }
MySchemeStringNode >> value [
	^ value
]

{ #category : #generated }
MySchemeStringNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
