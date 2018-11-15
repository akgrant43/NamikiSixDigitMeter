baselines
baseline: spec
	<baseline>

	| corePackages |

	corePackages := #(
		#'NamikiSixDigitMeter'
		).
	spec for: #common do: [ 
		spec blessing: #baseline.

		corePackages do: [ :each | spec package: each ].
		spec
			group: 'Core' with: corePackages;
			group: 'all' with: #(#Core);
			group: 'default' with: #(#all).
		]