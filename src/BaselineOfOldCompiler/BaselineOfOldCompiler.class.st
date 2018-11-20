Class {
	#name : #BaselineOfOldCompiler,
	#superclass : #BaselineOf,
	#category : #BaselineOfOldCompiler
}

{ #category : #baselines }
BaselineOfOldCompiler >> baseline: spec [
	<baseline>
	
	spec for: #common do: [
		spec blessing: #baseline.
		spec package: 'Compiler' ]
]
