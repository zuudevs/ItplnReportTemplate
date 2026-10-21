#import "../metadata.typ": kNumReport, kDeadline

#let kHeader = grid(
	columns: (0.5fr, 0.5fr),
	align: (start, end),
	[#h(5pt) Software Architecture & Quality Laboratory], [Lap-#kNumReport / #kDeadline  #h(8pt)]
)