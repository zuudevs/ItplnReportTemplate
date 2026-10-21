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

#set par(spacing: 1.15pt)
#set align(left)
#set page(
	paper: "a4",
	margin: (
		top: 1.9125cm,
		left: 1.8125cm,
		bottom: 1.9125cm,
		right: 1.8125cm
	),
	background: kDiscussion,
	header-ascent: 0.025cm,
	header: kHeader,
	footer-descent: 0.025cm,
	footer: kFooter,
)

#kCoverTheori

\

// #kCoverPracticum

// \