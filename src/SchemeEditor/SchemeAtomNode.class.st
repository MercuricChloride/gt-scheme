Class {
	#name : #SchemeAtomNode,
	#superclass : #SchemeProgramNode,
	#category : #SchemeEditor
}

{ #category : #generated }
SchemeAtomNode >> acceptVisitor: aProgramVisitor [
	^ aProgramVisitor visitAtom: self
]
