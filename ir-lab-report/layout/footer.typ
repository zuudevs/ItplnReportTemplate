#import "@preview/titleize:0.1.1": titlecase
#import "../metadata.typ": kStudentId, kName

#let kFooter = grid(
	columns: (0.5fr, 0.5fr),
	align: (left, right),
	[#h(5pt) #kStudentId], [#titlecase(kName) #h(3.5pt)]
)