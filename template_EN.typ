#import "@preview/icu-datetime:0.2.2" as icu

#let fsr-invitation(
  date: none,
  time: "16:00",
  room: none,
  author: "",
  type: "ordentlichen", // "ordentlichen" oder "außerordentlichen"
  logo: "fsr-logo.png",
  email: "fsr16@uni-kassel.de",
  tops: (),
  introductory_text: none,
  online-link: "https://discord.com",
  online-text: "online auf Discord"
) = {
  set document(title: "Invitation to the student council meeting") // TODO: Check translation
  set page(paper: "a4", margin: 2.5cm)
  set text(font: ("Liberation Sans", "Arial", "Helvetica",), fallback: true, size: 12pt, lang: "en")
  set par(justify: false)
  align(center)[GERMAN VERSION BELOW]
  align(center, image(logo, width: 100%))
  v(1.5em)

  [
    *To the members of the student council* \
    Wilhelmshöher Allee 71 – 73 \
    D-34121 Kassel
  ]

  align(right, [*#link("mailto:" + email)[#email]*])

  v(0.5em)
  text(size: 10pt)[#icu.fmt(datetime.today(), locale: "en", length: "long")]

  v(0.8em)

  [Dear members,]
  v(0.8em)
  if introductory_text != none {
    introductory_text
  } else {
    [
      you are hereby cordially invited to the next #type meeting of the student council.
      The next meeting will be held on *#date.display("[day].[month].[year]")*, at
      *#time* #if room != none [in *Room #room*] else [#link(online-link)[#online-text]].
    ]
  }
  v(1em)

  [Following the agenda:]
  v(0.3em)
  for (i, topic) in tops.enumerate(start: 1) {
    let num = if i < 10 { "0" + str(i) } else { str(i) }
    block(below: 0.5em)[*TOP #num:* #topic]
  }

  v(1em)
  [
    With kind regards,
  ]
  v(0.1em)
  [
    #author, Chair of the student council \
    #link("mailto:" + email)[#email]
  ]
}
