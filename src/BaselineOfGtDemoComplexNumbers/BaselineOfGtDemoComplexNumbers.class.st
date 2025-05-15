Class {
	#name : #BaselineOfGtDemoComplexNumbers,
	#superclass : #BaselineOf,
	#category : #BaselineOfGtDemoComplexNumbers
}

{ #category : #loading }
BaselineOfGtDemoComplexNumbers class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'gt-demo-complex-numbers' ]
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
BaselineOfGtDemoComplexNumbers >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'GtDemoComplexNumbers'
		]
]
