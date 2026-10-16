#import "@preview/titleize:0.1.1": titlecase
#import "../metadata.typ": kNim, kNama

#let kFooter = grid(
	columns: (0.5fr, 0.5fr),
	align: (left, right),
	[#h(5pt) #kNim], [#titlecase(kNama) #h(3.5pt)]
)