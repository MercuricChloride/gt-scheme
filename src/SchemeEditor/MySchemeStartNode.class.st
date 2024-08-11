Class {
	#name : #MySchemeStartNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'forms'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeStartNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitStart: self
]

{ #category : #generated }
MySchemeStartNode >> compositeNodeVariables [
	^ #(#forms)
]

{ #category : #generated }
MySchemeStartNode >> forms [
	^ forms
]

{ #category : #generated }
MySchemeStartNode >> forms: anOrderedCollection [
	self setParents: self forms to: nil.
	forms := anOrderedCollection.
	self setParents: self forms to: self
]

{ #category : #'generated-initialize-release' }
MySchemeStartNode >> initialize [
	super initialize.
	forms := OrderedCollection new: 2.
]
