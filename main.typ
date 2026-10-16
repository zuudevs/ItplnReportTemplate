#import "layout/cover.typ": kCoverTeori, kCoverPraktikum
#import "layout/header.typ": kHeader
#import "layout/footer.typ": kFooter
#import "layout/discussion.typ": kDiscussion

#set text(
	font: "Times New Roman",
	size: 12pt,
	lang: "id",
	tracking: 0.1pt
)

#set par(spacing: 1.15pt)
#set align(left)

#kCoverTeori

#set page(
	paper: "a4",
	margin: (top: 2.4cm, left: 2cm, bottom: 2.225cm, right: 2cm),
	background: kDiscussion,
	header-ascent: 0.8cm,
	header: kHeader,
	footer-descent: 0.26cm,
	footer: kFooter,
)

\

#kCoverPraktikum

\