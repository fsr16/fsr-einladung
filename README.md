# Einladung für FSR-Sitzungen

Dieses Repository enthält das [Typst](https://typst.app/)-Template für die Einladung zu den Sitzungen des Fachschaftsrates (FSR) des Fachbereichs 16 an der Universität Kassel.

## Verwendung

Für die Erstellung der Einladung muss lediglich die Datei [main.typ](./main.typ) bearbeitet werden.
Alle Einstellungsmöglichkeiten, abgesehen von Raum, Sitzungsdatum und Autor sind dabei optional und mit Standardwerten versehen.

```typst
#import "template.typ": fsr-einladung

#fsr-einladung(
  sitzungsdatum: datetime(year: 1970, month: 1, day: 1),
  zeit: "16:00",
  raum: "0407 / 0409",
  autor: "Maxi Muster",
  sitzungstyp: "ordentlichen", // "ordentlichen" oder "außerordentlichen"
  tops: (
    "Feststellung der Beschlussfähigkeit",
    "Genehmigung der Tagesordnung",
    "Verabschiedung des Protokolls vom XX.XX.XXXX",
    "Verschiedenes",
  ),
)
```

Der standardmäßige Einleitungstext kann ebenfalls überschrieben werdem, indem zusätzlich `einleitungstext` gesetzt wird.

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
