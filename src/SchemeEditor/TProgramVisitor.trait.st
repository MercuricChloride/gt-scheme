Trait {
	#name : #TProgramVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #SchemeEditor
}

{ #category : #generated }
TProgramVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]
