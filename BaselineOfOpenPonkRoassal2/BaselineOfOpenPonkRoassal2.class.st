Class {
	#name : #BaselineOfOpenPonkRoassal2,
	#superclass : #BaselineOf,
	#category : #BaselineOfOpenPonkRoassal2
}

{ #category : #baselines }
BaselineOfOpenPonkRoassal2 >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ 
			spec
				baseline: 'Roassal2'
				with: [ spec repository: 'github://ObjectProfile/Roassal2/src' ].
			spec
				package: 'OpenPonk-Trachel' 	with: [ spec requires: #('Roassal2') ];
				package: 'OpenPonk-Roassal2'	with: [ spec requires: #('Roassal2') ].
			spec group: 'default' with: #('OpenPonk-Trachel' 'OpenPonk-Roassal2') ]

]
