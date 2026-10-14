# Einladung für FSR-Sitzungen

Dieses Repository enthält das [Typst](https://typst.app/)-Template für die Einladung zu den Sitzungen des Fachschaftsrates (FSR) des Fachbereichs 16 an der Universität Kassel.

## Verwendung

Für die Erstellung der Einladung muss lediglich die Datei [main.typ](./main.typ) bearbeitet werden.
Alle Einstellungsmöglichkeiten, abgesehen von Raum, Sitzungsdatum und Autor sind dabei optional und mit Standardwerten versehen.

```typst
#import "template_DE.typ": fsr-einladung
#import "template_EN.typ": fsr-invitation

#let date = datetime(year: 1970, month: 1, day: 1)
#let time = "16:00"
#let room = "0407 / 0409"
#let author = "Maxi Muster"
#let type_DE = "ordentlichen"   // "ordentlichen" oder "außerordentlichen"
#let type_EN = "regular"        // "regular" or "extra-ordinary"
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
...
```

Sollte kein Raum angegeben werden, wird die Sitzung zu einer Online-Sitzung. Dabei wird "in Raum XXXX" durch "online auf Discord" ersetzt.
Dieser Text kann mit `online-text` überschrieben werden. Mit `online-link` kann außerdem ein Hyperlink gesetzt werden, der auf den Ort der Sitzung weiterleitet.

Der standardmäßige Einleitungstext kann auch vollständig überschrieben werdem, indem zusätzlich `einleitungstext` gesetzt wird.

```typst
#import "template.typ": fsr-einladung

#fsr-einladung(
  ...,
  einleitungstext: "Hiermit laden wir euch herzlich zu unserer Sitzung ein...",
  ...,
)
```

## Typst Installation
Typst kann entweder lokal installiert oder über die [Typst Web App](https://typst.app/) verwendet werden. 
Anweisungen für die lokale Installation gibt es auf der [Typst GitHub-Seite](https://github.com/typst/typst#installation).
Das Projekt kann lokal mit `typst compile main.typ` kompiliert werden.
