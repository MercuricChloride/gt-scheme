Class {
	#name : #Program,
	#superclass : #SmaCCParseNode,
	#category : #SchemeEditor
}

{ #category : #generated }
Program >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitProgram: self
]
