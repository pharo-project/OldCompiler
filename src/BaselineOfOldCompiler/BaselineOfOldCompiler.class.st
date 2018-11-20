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
		spec package: 'Compiler'.
		
		spec preLoadDoIt: #preload:.
		spec postLoadDoIt: #postload:. ]
]

{ #category : #baselines }
BaselineOfOldCompiler >> postload: x [

	MCMethodDefinition initializersEnabled: true.
	ParseNode initialize.
	VariableNode initialize.
	Decompiler initialize
]

{ #category : #baselines }
BaselineOfOldCompiler >> preload: x [

	MCMethodDefinition initializersEnabled: false.
]
