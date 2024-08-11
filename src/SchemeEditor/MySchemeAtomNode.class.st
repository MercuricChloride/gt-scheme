Class {
	#name : #MySchemeAtomNode,
	#superclass : #MySchemeProgramNode,
	#instVars : [
		'atom'
	],
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeAtomNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAtom: self
]

{ #category : #generated }
MySchemeAtomNode >> atom [
	^ atom
]

{ #category : #generated }
MySchemeAtomNode >> atom: aMySchemeProgramNode [
	self atom notNil ifTrue: [ self atom parent: nil ].
	atom := aMySchemeProgramNode.
	self atom notNil ifTrue: [ self atom parent: self ]
]

{ #category : #generated }
MySchemeAtomNode >> nodeVariables [
	^ #(#atom)
]
