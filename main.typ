#import "template_DE.typ": fsr-einladung
#import "template_EN.typ": fsr-invitation

#let date = datetime(year: 1970, month: 1, day: 1)
#let time = "16:00"
#let room = "0407 / 0409"
#let author = "Baldi"
#let type_DE = "ordentlichen"
#let type_EN = "regular"
#let tops_DE = (
  "Feststellung der Beschlussfähigkeit",
  "Genehmigung der Tagesordnung",
  "Verabschiedung des Protokolls vom XX.XX.XXXX",
  "Berichte aus Ausschüssen und AGs",
)
#let tops_EN = (
  "Confirmation of a quorum",
  "Approval of the agenda",
  "Approval of the minutes of XX.XX.XXXX",
  "Reports from committees and working groups",
)

// English version
#fsr-invitation(
  date: date,
  time: time,
  room: room,
  author: author,
  type: type_EN,
  tops: tops_EN,
)

// German version
#fsr-einladung(
  sitzungsdatum: date,
  zeit: time,
  raum: room,
  autor: author,
  sitzungstyp: type_DE,
  tops: tops_DE,
)
