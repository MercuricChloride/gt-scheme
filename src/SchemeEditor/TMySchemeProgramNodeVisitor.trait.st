Trait {
	#name : #TMySchemeProgramNodeVisitor,
	#traits : 'TSmaCCParseNodeVisitor',
	#classTraits : 'TSmaCCParseNodeVisitor classTrait',
	#category : #SchemeEditor
}

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitList: aList [
	^ self visitProgram: aList
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitNumber: aNumber [
	^ self visitProgram: aNumber
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitProgram: aProgram [
	^ self visitSmaCCParseNode: aProgram
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitQuote: aQuote [
	^ self visitProgram: aQuote
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitStart: aStart [
	^ self visitProgram: aStart
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitString: aString [
	^ self visitProgram: aString
]

{ #category : #generated }
TMySchemeProgramNodeVisitor >> visitSymbol: aSymbol [
	^ self visitProgram: aSymbol
]
