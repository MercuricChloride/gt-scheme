Class {
	#name : #MySchemeProgramNode,
	#superclass : #SmaCCParseNode,
	#category : #SchemeEditor
}

{ #category : #generated }
MySchemeProgramNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
