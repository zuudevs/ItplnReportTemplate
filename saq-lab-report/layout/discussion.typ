#import "../config.typ": Debug
#import "grid.typ": kGrid

#let kDiscussion = pad(
	top: 2.1cm, 
	left: 1.825cm, 
	bottom: 2.225cm, 
	right: 1.825cm
)[
	#rect(
		fill: if Debug == true {kGrid} else {none},
		stroke: 2.25pt + black, 
		height: 100%,
		width: 100%,
		inset: (
			top: 1em
		)
	)
]