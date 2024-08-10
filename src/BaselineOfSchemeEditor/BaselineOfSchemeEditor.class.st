Class {
	#name : #BaselineOfSchemeEditor,
	#superclass : #BaselineOf,
	#category : #BaselineOfSchemeEditor
}

{ #category : #loading }
BaselineOfSchemeEditor class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'scheme-editor' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : #baseline }
BaselineOfSchemeEditor >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'SchemeEditor'
		]
]
