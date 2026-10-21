#import "layout/cover.typ": kCoverTheori, kCoverPracticum
#import "layout/header.typ": kHeader
#import "layout/footer.typ": kFooter
#import "layout/discussion.typ": kDiscussion

#set text(
	font: "Times New Roman",
	size: 12pt,
	lang: "id",
	tracking: 0.0125pt,
	kerning: false
)

#set par(spacing: 1.15pt, justify: true)
#set align(left)
#set page(
	paper: "a4",
	margin: (
		top: 2.4cm, 
		left: 2cm, 
		bottom: 2.225cm, 
		right: 2cm
	),
	background: kDiscussion,
	header-ascent: 0.8cm,
	header: kHeader,
	footer-descent: 0.26cm,
	footer: kFooter,
)

#kCoverTheori

\

#kCoverPracticum

\