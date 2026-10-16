#import "@preview/titleize:0.1.1": titlecase
#import "../metadata.typ": kMataKuliah, kNama, kKelas, kNim, kDosen, kNoPc, kAsisten, kYearStudy, kJurusan
#import "../config.typ": Debug
#import "grid.typ": kGrid

#let _cover(jenisLaporan: "teori") = pad(
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
				Laporan #jenisLaporan
				#v(20.25pt)
				#kMataKuliah
			]
		]

		#v(20pt)

		#image("../assets/logo_ir_lab.png", height: 5.9cm, width: auto)

		#align(left)[
			#rect(
				width: 100%,
				height: auto,
				stroke: none,
				inset: (left: 26.5%)
			)[
				#align(left)[
					#v(24pt) #h(1.5pt) #upper("nama") #h(13.5pt) : #kNama
					#v(16.75pt) #h(1.5pt) #upper("nim") #h(26pt) : #kNim
					#v(16.75pt) #h(1.5pt) #upper("kelas") #h(10.5pt) : #kKelas
					#v(16.75pt) #h(1.5pt) #upper("dosen") #h(9pt) : #kDosen
					#v(16.75pt) #h(1.5pt) #upper("no.pc") #h(14pt) : #kNoPc
					#v(18.5pt) #h(1.5pt) #upper("asisten") #h(-0.5pt) : 
					#rect(
						width: 100%,
						height: auto,
						fill: rgb(0, 0, 0, 0),
						stroke: rgb(0, 0, 0, 0),
						inset: (left: 17.875%, top: -9pt)
					)[
						#for (i, item) in kAsisten.enumerate() {
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
				#titlecase(kJurusan)
				#v(20pt)
				institut teknologi PLN – jakarta
				#v(20pt)
				#kYearStudy
			]
		]
	]
]

#let kCoverTeori = page(
	background: _cover(jenisLaporan: "teori"),
	header: none,
	footer: none,
)[]

#let kCoverPraktikum = page(
	background: _cover(jenisLaporan: "praktikum"),
	header: none,
	footer: none,
)[]