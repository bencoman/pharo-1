Class {
	#name : #ExercismTemporaryNeitherReadNorWrittenRule,
	#superclass : #GRTemporaryNeitherReadNorWrittenRule,
	#category : #'ExercismTools-Rules'
}

{ #category : #running }
ExercismTemporaryNeitherReadNorWrittenRule >> check: aNode forCritiquesDo: aBlock [
	|candidate|
	candidate := aNode.
	[ candidate isMethod ] whileFalse: [ candidate := candidate parent ].
	candidate methodClass isExercismTest ifTrue: [ ^false ].
	super check: aNode forCritiquesDo: aBlock
		

]
