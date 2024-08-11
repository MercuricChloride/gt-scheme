Class {
	#name : #MySchemeListNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'lparenToken',
		'forms',
		'rparenToken'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeListNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitList: self
]

{ #category : #generated }
MySchemeListNode >> compositeNodeVariables [
	^ #(#forms)
]

{ #category : #generated }
MySchemeListNode >> forms [
	^ forms
]

{ #category : #generated }
MySchemeListNode >> forms: anOrderedCollection [
	self setParents: self forms to: nil.
	forms := anOrderedCollection.
	self setParents: self forms to: self
]

{ #category : #'generated-initialize-release' }
MySchemeListNode >> initialize [
	super initialize.
	forms := OrderedCollection new: 2.
]

{ #category : #generated }
MySchemeListNode >> lparenToken [
	^ lparenToken
]

{ #category : #generated }
MySchemeListNode >> lparenToken: aSmaCCToken [
	lparenToken := aSmaCCToken
]

{ #category : #generated }
MySchemeListNode >> rparenToken [
	^ rparenToken
]

{ #category : #generated }
MySchemeListNode >> rparenToken: aSmaCCToken [
	rparenToken := aSmaCCToken
]

{ #category : #generated }
MySchemeListNode >> tokenVariables [
	^ #(#lparenToken #rparenToken)
]
