Class {
	#name : #MySchemeFormNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'forms',
		'value',
		'lparenToken',
		'rparenToken'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeFormNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitForm: self
]

{ #category : #generated }
MySchemeFormNode >> compositeNodeVariables [
	^ #(#forms)
]

{ #category : #generated }
MySchemeFormNode >> forms [
	^ forms
]

{ #category : #generated }
MySchemeFormNode >> forms: anOrderedCollection [
	self setParents: self forms to: nil.
	forms := anOrderedCollection.
	self setParents: self forms to: self
]

{ #category : #'generated-initialize-release' }
MySchemeFormNode >> initialize [
	super initialize.
	forms := OrderedCollection new: 2.
]

{ #category : #generated }
MySchemeFormNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
MySchemeFormNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
MySchemeFormNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
MySchemeFormNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
MySchemeFormNode >> tokenVariables [
	^ #(#value #lparenToken #rparenToken)
]

{ #category : #generated }
MySchemeFormNode >> value [
	^ value
]

{ #category : #generated }
MySchemeFormNode >> value: aSmaCCToken [
	value := aSmaCCToken
]
