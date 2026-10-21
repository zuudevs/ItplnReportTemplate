#import "@preview/titleize:0.1.1": titlecase
#import "../metadata.typ": kSubject, kName, kClass, kStudentId, kLecture, kNumPc, kAssistants, kYearStudy, kMajor
#import "../config.typ": Debug
#import "grid.typ": kGrid

#let _cover(reportType: "teori") = pad(
	top: 2.1cm, 
	left: 1.825cm, 
	bottom: 2.225cm, 
	right: 1.825cm
)[
	#rect(
		fill: if Debug == true {kGrid} else {none},
		stroke: 2.25pt + color.black, 
		height: 100%,
		width: 100%
	)[
		#upper[
			#text(weight: "bold", size: 17pt)[
				#v(-2.25pt)
				Laporan #reportType
				#v(20.25pt)
				#kSubject
			]
		]

		#v(20pt)

		#image("../assets/ir-lab-logo.png", height: 5.9cm, width: auto)

		#align(left)[
			#rect(
				width: 100%,
				height: auto,
				stroke: none,
				inset: (left: 26.5%)
			)[
				#align(left)[
					#v(24pt) #h(1.5pt) #upper("nama") #h(13.5pt) : #titlecase(kName)
					#v(16.75pt) #h(1.5pt) #upper("nim") #h(26pt) : #titlecase(kStudentId)
					#v(16.75pt) #h(1.5pt) #upper("kelas") #h(10.5pt) : #titlecase(kClass)
					#v(16.75pt) #h(1.5pt) #upper("dosen") #h(9pt) : #titlecase(kLecture)
					#v(16.75pt) #h(1.5pt) #upper("no.pc") #h(14pt) : #titlecase(kNumPc)
					#v(18.5pt) #h(1.5pt) #upper("asisten") #h(-0.5pt) : 
					#rect(
						width: 100%,
						height: auto,
						fill: rgb(0, 0, 0, 0),
						stroke: rgb(0, 0, 0, 0),
						inset: (left: 17.875%, top: -9pt)
					)[
						#for (i, item) in kAssistants.enumerate() {
							[
								#(i + 1). #titlecase(item)
								#v(18.25pt)
							]
						}
					]
				]
			]
		]

		#text(weight: "bold", size: 17pt)[
			#upper[
				#v(42pt)
				fakultas telematika energi
				#v(20pt)
				#titlecase(kMajor)
				#v(20pt)
				institut teknologi PLN – jakarta
				#v(20pt)
				#kYearStudy
			]
		]
	]
]

#let kCoverTheori = page(
	background: _cover(reportType: "teori"),
	header: none,
	footer: none,
)[]

#let kCoverPracticum = page(
	background: _cover(reportType: "praktikum"),
	header: none,
	footer: none,
)[]