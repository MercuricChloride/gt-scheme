Class {
	#name : #SchemeProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #SchemeEditor
}

{ #category : #generated }
SchemeProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
