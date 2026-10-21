#import "@preview/titleize:0.1.1": titlecase
#import "../metadata.typ": kSubject, kName, kClass, kStudentId, kLecture, kNumPc, kAssistants, kFaculty, kMajor, kYearStudy
#import "../config.typ": Debug
#import "grid.typ": kGrid

#let _cover(reportType: "teori") = pad(
	top: 1.9125cm,
	left: 1.8125cm,
	bottom: 1.9125cm,
	right: 1.8125cm,
)[
	#rect(
		width: 100%,
		height: 100%,
		stroke: 2.25pt + black
	)[
		#align(center)[
			#upper()[
				#text(
					weight: "bold",
					size: 16pt
				)[
					#v(0.25em)
					laporan #reportType
					#v(1.216em)
					#kSubject
				]
			]
			#v(1.25em)
			#image("../assets/saq-lab-logo.png", width: 9.51cm, height: 9.02cm)

			#layout(size => {
				place(
					top + left,
					float: true,
					scope: "parent",
					dx: size.width * 25.5%,
					dy: size.width * 1.975%,
					rect(
						stroke: none,
						width: auto,
						height: auto,
					)[
						#upper("nama") #h(1.1125em): #kName
						#v(1.4125em) #upper("nim") #h(2.13em): #kStudentId
						#v(1.3725em) #upper("kelas") #h(0.85em): #kClass
						#v(1.4125em) #upper("dosen") #h(0.725em): #kLecture
						#v(1.4125em) #upper("no.pc") #h(1.1725em): #kNumPc
						#v(1.375em) #upper("asisten") : #box(
							stroke: none,
							width: auto,
							height: auto,
						)[
							#for (idx, value) in kAssistants.enumerate(start: 1) {
								[#h(0.2em) #idx. #titlecase(value) #v(1.4em)]
							}
						]
					]
				)
			})
			#upper()[
				#text(
					weight: "bold",
					size: 12pt
				)[
					#v(0.5em)
					#h(-1em + 1pt) fakultas #kFaculty
					#v(1.375em)
					#h(-0.75em + 1pt) #kMajor
					#v(1.4em)
					#h(-1em + 1pt) institut teknologi pln -- jakarta
					#v(1.4em)
					#h(-1em + 1pt) #kYearStudy
				]
			]
		]
	]
]

#let kCoverTheori = page(
	paper: "a4",
	background: _cover(reportType: "teori"),
	header: none,
	footer: none,
)[]

#let kCoverPracticum = page(
	paper: "a4",
	background: _cover(reportType: "praktikum"),
	header: none,
	footer: none,
)[]