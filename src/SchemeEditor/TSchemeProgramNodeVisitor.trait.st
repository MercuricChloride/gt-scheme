Trait {
	#name : #TSchemeProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #SchemeEditor
}

{ #category : #generated }
TSchemeProgramNodeVisitor >> visitAtom: anAtom [
	^ self visitProgram: anAtom
]

{ #category : #generated }
TSchemeProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]
