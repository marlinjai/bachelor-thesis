# Bachelorarbeit: Festigkeit von Altholz

LaTeX-Projekt fuer eine Bachelorarbeit an der Hochschule fuer nachhaltige
Entwicklung Eberswalde (HNEE). Aufgesetzt mit KOMA-Script `scrbook`, Deutsch
als Dokumentsprache, abgeleitet von
[marlinjai/academic-thesis-template](https://github.com/marlinjai/academic-thesis-template).

**Thema:** Unterscheidet sich die verbliebene Festigkeit eines gebrauchten
Holzbalkens zwischen seiner ehemaligen Druckzone (oben im Querschnitt) und
seiner ehemaligen Zugzone (unten)? Die Arbeit liefert den theoretischen
Unterbau und einen Versuchsplan. Die Versuche selbst stehen aus, Kapitel 6
ist bislang ein Geruest mit Platzhaltern.

## Zuerst

1. `metadata.tex` ausfuellen: Name, Matrikelnummer, Pruefer. Die Platzhalter
   dort erscheinen sonst so auf dem Titelblatt.
2. `ROADMAP.md` lesen. Dort stehen alle offenen Punkte, auch die, die mit der
   Betreuung zu klaeren sind (Zitierweise, Studiengang).

## Bauen

Es braucht eine TeX-Live-Installation ab 2023 mit `latexmk` und `biber`.

- **macOS:** [MacTeX](https://tug.org/mactex/) installieren, danach laeuft es.
- **Linux:** `texlive-full` aus der Distribution, oder `./install-latex.sh`
  fuer eine Installation im Projektordner ohne root (dauert rund 15 Minuten
  und braucht etwa 1 GB).

```bash
make            # erzeugt build/main.pdf
```

| Befehl | Wirkung |
|---|---|
| `make` / `make pdf` | Vollstaendiger Lauf (pdflatex, biber, makeglossaries, pdflatex zweimal) |
| `make watch` | Baut bei jedem Speichern neu |
| `make wordcount` | Wortzahl ueber alle eingebundenen Dateien |
| `make clean` | Hilfsdateien loeschen, PDF behalten |
| `make distclean` | `build/` komplett loeschen |

Das PDF landet in `build/main.pdf`. Reinen Text daraus:

```bash
pdftotext build/main.pdf build/main.txt
```

`build/` ist gitignoriert. PDF und Textfassung liegen also nicht im
Repository, sondern werden bei Bedarf neu erzeugt.

> **Hinweis zu `.mise.toml`:** Die Datei setzt einen projektlokalen
> TeX-Live-Pfad auf `x86_64-linux`. Sie wirkt nur auf Linux und nur, wenn
> `.texlive/` tatsaechlich vorhanden ist. Auf macOS wird sie ignoriert und
> die System-Installation verwendet.

## Aufbau

```
main.tex                  Dokumentgeruest: die Reihenfolge von allem
metadata.tex              ZUERST AUSFUELLEN: Titel, Name, Pruefer, Abschluss
preamble.tex              Pakete und globale Konfiguration
glossary.tex              Glossareintraege und Abkuerzungen
references.bib            Literatur (biblatex, Autor-Jahr)
frontmatter/              Titelblatt, Danksagung, Abstracts (DE und EN)
chapters/01..08-*.tex     der eigentliche Text
backmatter/               Anhang, Eigenstaendigkeitserklaerung
figures/                  Bilder, darunter das HNEE-Logo
research/altholz/         Rechercheprotokolle, aus denen die Kapitel entstanden
build/                    erzeugte Dateien, gitignoriert
template-original/        unveraendertes Ausgangstemplate zum Nachschlagen
```

## Kapitel

| Datei | Inhalt |
|---|---|
| `01-introduction` | Ausgangslage, Fragestellung, Aufbau |
| `02-background` | AltholzV, Abfallhierarchie, Sortierung nach DIN 4074 und EN 338, Eurocode 5 |
| `03-literature` | Forschungsstand und die Luecke, an der die Arbeit ansetzt |
| `04-data` | Werkstoffphysik: Spannungsverteilung, Versagensarten, Kriechen, Hypothese |
| `05-empirical-strategy` | Versuchsplan: Probenentnahme, Pruefverfahren, Statistik |
| `06-results` | Geruest fuer die Ergebnisse, alle Zellen leer |
| `07-discussion` | Einordnung der moeglichen Ausgaenge, Grenzen |
| `08-conclusion` | Zusammenfassung |

## Schreiben

- **Umlaute:** Das Projekt schreibt `ue`, `ae`, `oe` und `ss` aus, also
  "ueber" statt "über". Das ist durchgaengig so und sollte beibehalten
  werden, sonst wird es uneinheitlich.
- **Zitieren:** Eintrag in `references.bib` anlegen, dann `\parencite{key}`
  (Klammerzitat) oder `\textcite{key}` (im Satz). Der Stil ist Autor-Jahr.
  Normen und Gesetze haben keinen Autor und tragen deshalb ein
  `shorthand`-Feld, damit sie als "EN 338" und nicht mit ihrem vollen Titel
  zitiert werden.
- **Querverweise:** `\label{ch:foo}` setzen, mit `\Cref{ch:foo}` verweisen.
  Daraus wird automatisch "Kapitel 3" oder "Tabelle 5.1".
- **Glossar:** `\gls{altholz}` fuer Begriffe, `\acrshort{altholzv}` oder
  `\acrfull{altholzv}` fuer Abkuerzungen. Gedruckt werden nur Eintraege, die
  auch vorkommen. Die Liste steht in `glossary.tex`.
- **Neues Kapitel:** `chapters/09-foo.tex` anlegen und `\input{chapters/09-foo}`
  in `main.tex` ergaenzen.

## Corporate Identity der HNEE

Das Titelblatt traegt das HNEE-Logo, und `#004D3D` ist die Akzentfarbe fuer
Verweise und Zitate.

Die HNEE veroeffentlicht ihr Logo nur in Weiss. Fuer `figures/hne-logo.pdf`
wurde daher die offizielle Vektordatei genommen und ihre Fuellfarbe auf das
Hochschulgruen gesetzt; `figures/hne-logo-white.svg` ist das unveraenderte
Original. Gibt es beim Hochschulmarketing eine offizielle Logodatei, ersetzt
man `figures/hne-logo.pdf` damit und muss sonst nichts aendern.

## Recherche

`research/altholz/` enthaelt sechs Rechercheprotokolle zu Regulierung,
Klassifizierung, Werkstoffphysik, Forschungsstand, Hochschulvorgaben und
Methodik. Jede Aussage dort ist entweder mit einer URL belegt oder als
`[UNVERIFIED]` gekennzeichnet. Die Kapitel sind aus diesen Dateien
geschrieben, und ungepruefte Angaben sind im Text entsprechend vorsichtig
formuliert.

## VS Code

`.vscode/settings.json` konfiguriert LaTeX Workshop so, dass nach `build/`
geschrieben wird. Die Erweiterung *LaTeX Workshop* (James Yu) installieren,
dann funktioniert es.
