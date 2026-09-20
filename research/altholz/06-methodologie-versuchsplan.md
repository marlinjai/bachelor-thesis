---
title: Versuchsmethodik und Versuchsplan zum Vergleich Druck- und Zugzone
type: plan
status: draft
created: 2026-09-20
asof: 2026-09-20
---

# Versuchsmethodik und Versuchsplan: Restfestigkeit in Druck- und Zugzone von Altholz

## Kritische Anmerkungen zur Aufgabenstellung

**Fachliche Klarstellung 1: 4-Punkt-Biegung und Querzugfestigkeit**

Die ursprüngliche Aufgabenstellung nennt "4-Punkt-Biegung fuer Querzugfestigkeit". Das ist methodisch falsch. Der 4-Punkt-Biegeversuch nach EN 408 liefert Biegefestigkeit (f_m) und Elastizitaetsmodul (E-Modul). Die Querzugfestigkeit (f_t,90) wird durch einen separaten Zugversuch quer zur Faser gemessen. Diese Versuchsmethodik konzentriert sich auf die **Biegefestigkeit** als Hauptzielgroesse. Die Messung der Querzugfestigkeit ist optional und wuerde eigene Proben und andere Geometrie erfordern.

**Fachliche Klarstellung 2: Normenebene fuer Kleinproben**

EN 408 ist fuer Proben in Bauteilgroesse ausgelegt. Da das Ziel ist, Druck- und Zugzonen aus demselben Balken miteinander zu vergleichen, muss aus dem Querschnitt ein Balkensegment herausgesaegt werden und in zwei Zonen aufgeteilt werden. Die resultierenden Proben sind Kleinproben, nicht Bauteilgroesse. Die methodische Grundlage wechselt daher zu:
- **Biegefestigkeit (parallel zur Faser)**: DIN 52186 oder ISO 13061-3
- **Druckfestigkeit (parallel zur Faser)**: DIN 52185 oder ISO 13061-17
- **Dichte**: ISO 13061-2 oder DIN 52182
- **Holzfeuchte**: DIN EN 13183-1 (Darrmethode, 103 Grad Celsius bis Massekonstanz)

Die Geometrie-Prinzipien von EN 408 (Stuetzweite 18 mal Hoehe, Lastabstand 6 mal Hoehe) gelten analog. Dies ist der methodische Kernpunkt: Nicht EN 408 direkt, sondern Kleinproben-Normen mit EN-408-Geometrieprinzipien.

---

## 1. Stichprobenentnahme und Zonenzuordnung

### 1.1 Das Primäre Identifikationsproblem

Das groesste methodische Risiko ist die Zuordnung, welche Probe Druck- und welche Zugzone war. Nach dem Ausbau aus dem Tragwerk ist diese Information nicht unmittelbar sichtbar. **Alle Probengewinnung muss mit klaren Markierungen beginnen.**

**Requirement fuer die Ausgangsbalkensaemmlinge (falls neu erhobenen oder mit bekannter Geschichte):**

1. Oberseite des Balkens beim Rueckbau fotografisch dokumentieren und mit dauerhafter Markierung versehen (z.B. Pinienfarbe, Tinte, Gravur mit Datum und Herkunft)
2. Lagepläne festhalten: Position im Tragwerk, Spannweite, Auflager, Nutzlast (bei Traegerbalken) oder Traegerkonfiguration
3. Durchbiegungsmessungen vor Rueckbau durchfuehren, um Kriechen oder Verformung zu dokumentieren

**Quelle: Keine Norm regelt dies explizit; es ist eine Dokumentations-Best-Practice [UNVERIFIED], aber essentiell fuer die Validitaet des Vergleichs.**

### 1.2 Ausschlusskriterien fuer unklare Zonenzuordnung

Ist die Herkunft des Balkens unbekannt oder nicht dokumentiert, muessen Sekundaer-Indikatoren geprueft werden. Ohne eindeutige Zuordnung wird die Probe ausgeschlossen:

1. **Makroskopische Oberflaechen-Indikatoren (alle [UNVERIFIED]):**
   - Nagelspuren oder Dielen-Auflageflaechenabdruecke auf der oberen Seite (suggeriert Oberseite)
   - Oberflaechen-Risse oder Checks, die zugseitig starker ausgebildet sind
   - Feuchte-Verfaerbungen oder Pilzbefall, die unten ausgeprägter sind (nur bei langfristigem Stau)
   
2. **Radialer Faseraufbau:** Der radiale Abstand zum Kern kann auf die Lage hindeuten (keine sichere Methode [UNVERIFIED])

3. Im Zweifelsfall: Probe ausschliessen.

### 1.3 Probenentnahmeplan

**Querschnittsteilung aus einem Balkensegment:**

1. Aus jedem verfuegbaren Altholzbalken ein Segment von ca. 300 bis 500 mm Laenge ausgesaegen (unterhalb der Fehler-Konzentrationszonen an Auflagermaerkern oder Anschluessungen)
2. Dieses Segment wird in der horizontalen Mittellinie geteilt (angenommene Neutrale Faser)
3. **Oberhaelfte** = Vermutete Druckzone
4. **Unterhaelfte** = Vermutete Zugzone
5. Aus jeder Haelfte werden Proben fuer vier Pruefverfahren entnommen (siehe Abschnitt 2)

**Hinweis zur Markierung:** Jede Probe erhaelt eine durchgehende Markierung (Laufnummer_Zone_Balken-ID), die nicht durch Saegen entfernt werden kann (z.B. Einschlag mit Punzen).

---

## 2. Probengroesse und Segmentplan

### 2.1 Struktur: Balkensegmente und Proben pro Segment

**Grundsatz:** Dieser Versuchsplan ist konservativ dimensioniert und basiert auf Industriestandard-Empfehlungen fuer Altholzproben. Die endgueltigen Zahlen erfordern Abstimmung mit der Betreuerin und eine a-priori Power-Analyse nach dem Pilotversuch.

**Pro Balken:**
- 1 Balkensegment (ca. 300-500 mm Laenge)
- 2 Halbsegmente (Druck- und Zugzone)
- Pro Halbsegment: mindestens 3 Proben pro Pruefverfahren, idealerweise 4 bis 5
- Total pro Balken: 24 bis 40 kleine Holzproben

[UNVERIFIED: Basierend auf Holzforschungs-Richtlinien, keine normative Festlegung in EN 384 oder DIN 52185 fuer Altholzzonen]

### 2.2 Empfohlene Probenzahl (vor Pilotversuch)

| Pruefverfahren | Proben pro Zone | Balkensegmente | Gesamtproben |
|---|---|---|---|
| 4-Punkt-Biegung (Biegefestigkeit, E-Modul) | 4 | 12 bis 15 | 96 bis 120 |
| Druckversuch parallel zur Faser | 4 | 12 bis 15 | 96 bis 120 |
| Holzfeuchte-Bestimmung (Darrmethode) | 2 | 12 bis 15 | 48 bis 60 |
| Dichte-Bestimmung | 2 | 12 bis 15 | 48 bis 60 |
| **Total (alle Verfahren zusammen)** | | **12 bis 15** | **288 bis 360** |

**Begruendung:**
- EN 384 nennt Reduktionsfaktoren fuer kleine Stichproben, eine absolute Mindestzahl wird nicht genannt. [UNVERIFIED: Typikal werden in Altholzstudien n=12 bis n=20 Balkenproben angestrebt]
- Mit n=4 Proben pro Zone pro Test erreicht man bei Normalverteilung einen gepairten t-Test mit vertretbarer Power (alpha = 0,05, angestrebte Power = 0,80)
- Ausfallquote durch Messfehler, Ausschlusskriterien oder Bruch vor Pruefende planen (angestrebte Netto-Quote: ca. 90 Prozent)

**Nach Pilotversuch:** Die Effektgroesse aus 2 bis 3 Balkensegmenten in die Poweranalyse (G*Power oder equivalentes Werkzeug) einführen und n neu berechnen.

---

## 3. Probenvorbereitung

### 3.1 Lagerung und Akklimatisierung

**Nach dem Ausbau und Transport:**

1. Balkensegmente sofort bei 15 bis 25 Grad Celsius und 40 bis 60 Prozent relativer Luftfeuchte lagern (trockener Lagerraum, beschattet)
2. Dauer: Mindestens 2 bis 4 Wochen vor der Segmentierung, um oberflaechen-nahe Trocknungsspannungen zu entspannen [UNVERIFIED]

**Vor dem Saegen und Pruefung:**

1. Kleine Holzproben nach dem Saegen: 20 plus/minus 5 Grad Celsius / 65 plus/minus 5 Prozent relative Luftfeuchte (Laborstandard nach EN 408 und DIN EN 13183-1)
2. Verweildauer: Mindestens 2 bis 3 Wochen, bis die Holzfeuchte stabiles Niveau erreicht hat (ca. 10 bis 14 Prozent)

**Quelle:** EN 408:2010+A1:2012, DIN EN 13183-1:2002

### 3.2 Behandlung und Sägen

1. **Saegeverfahren:** Bandsaege mit feinem Zaehne-Abstand verwenden (Rauheit < 3.2 Mikrometer Ra, wenn moeglich). Abrisse und Verschalung an Schnittkanten minimieren
2. **Prueflänge nach EN 408 / DIN 52186:** Fuer 4-Punkt-Biegung Probenlaenge L = 18 mal h (h = Querschnittshoehe). Wenn Balkensegment zu kurz: [UNVERIFIED, zu klaeren mit Betreuerin]
3. **Druckprobe:** Probenlaenge nach DIN 52185 oder ISO 13061-17 etwa 6 mal die kleinere Querschnittsseite, oder Mindestlaenge 60 mm
4. **Querschnitts-Abmessungen:** Nach dem Saegen messen (siehe Abschnitt 4)

**Hinweis:** Alte Balken koennen bereits verkreeppte Quer-Risse oder Schwind-Risse enthalten. Diese sind sichtbarer Oberflaechen-Fehler und fuehren zum Ausschluss der Probe (siehe Ausschlusskriterien in Abschnitt 5).

### 3.3 Kleben (falls erforderlich)

[UNVERIFIED] Sollten Proben waehrend des Prüfvorgangs an driftbenuterbefestigungen gesichert werden müssen (z.B. Verdrehsicherung bei Biegung), muss das Klebemittel:
- Hochfester, langsam-haertender Konstruktionskleber (z.B. Epoxy oder PU-Klebstoff)
- Oberflaechen-Rauheit vor dem Kleben (ca. 1 mm Abrieb oder Anschleifen)
- Aushärtung nach Herstellerangabe vor der Pruefung (mind. 24 Stunden bei 20 Grad Celsius)

Die geklebten Flaechen werden bei der Ausmessung des Querschnitts ausgenommen.

---

## 4. Pruefverfahren und Messungen

### 4.1 Biegefestigkeit: 4-Punkt-Biegeversuch

**Norm:** DIN 52186 (oder ISO 13061-3 analog); Geometrie nach EN 408:2010+A1:2012

**Proben-Abmessungen (typisch, [UNVERIFIED]):**
- Querschnitt: ca. 20 x 20 bis 50 x 50 mm (kein Standard, an Altholz-Balkenstärke angepasst)
- Länge: L = (18 plus/minus 1) mal h (h = Querschnittshoehe im Biegefall)
- Wenn h = 25 mm, dann L ca. 450 mm

**Stuetzweite und Lastabstände (nach EN 408):**
- Gesamt-Stuetzweite: l_span = 18 h
- Abstand zwischen den inneren Lasteintraege-Punkten: l_load = 6 h
- Messspannweite fuer lokale Durchbiegung: l_1 = 5 h (ueber die Stabilitaets-Zone gemessen)

**Belastungsrate:** [UNVERIFIED: Aus EN 408 nicht direkt klar; typisch 20 plus/minus 10 Millimeter / Minute Durchbiegungsrate oder etwa 10 bis 50 Newton pro Sekunde Kraftanstieg, je nach Querschnitt]

**Messwerte:**
1. Bruchlast: F_max in Newton (oder Maximum der Kraft-Durchbiegungs-Kurve)
2. Biegefestigkeit: f_m = (3 mal F_max mal l_load) / (2 mal b mal h^2) [Vier-Punkt-Formel, wobei b Breite]
3. Durchbiegung bei proportionaler Last (fuer E-Modul-Berechnung)
4. E-Modul parallel zur Faser: Aus Kraft-Durchbiegungs-Steigung waehrend der linearen Phase

**Bruchart dokumentieren:** Schubbruch, Faserbruch, Bruch ausserhalb des mittleren Drittels = Ausschlussgrund

### 4.2 Druckversuch parallel zur Faser

**Norm:** DIN 52185:1976 oder ISO 13061-17:2014

**Proben-Abmessungen (typisch, [UNVERIFIED]):**
- Querschnitt: ca. 20 x 20 bis 50 x 50 mm
- Laenge: L = 6 mal b_min (b_min = kleinere Querschnittsseite), Mindestens 60 mm

**Belastungs-Bedingungen (nach DIN 52185):**
- Belastungsrate: ca. 20 bis 50 Millimeter / Minute Verschiebung oder etwa 200 bis 500 Newton / Sekunde Kraft
- Bruch sollte in (300 plus/minus 120) Sekunden erfolgen

**Messwerte:**
1. Bruchlast: F_c,0,max in Newton
2. Druckfestigkeit: f_c,0 = F_c,0,max / (b mal h) in Megapascal
3. Bruchtypus: Faserbruch vs. Schubbruch vs. Knickung (Ausschlusskriterium wenn Knickung)

### 4.3 Holzfeuchte-Bestimmung (Darrmethode)

**Norm:** DIN EN 13183-1:2002

**Verfahren:**
1. Pruefstuecke von ca. 10 bis 15 Gramm Masse aus dem mittleren Drittel der Prueflinge mit Biegring- oder Staberproben schneiden
2. Frischmasse m_0 wiegen (auf 0,01 Gramm genau)
3. Im Trockenschrank bei (103 plus/minus 2) Grad Celsius trocknen bis zur Massenkonstanz (Waegung alle 2 bis 4 Stunden, bis Delta < 0,5 Prozent zwischen zwei Waegungen)
4. Trockenmasse m_u wiegen
5. Holzfeuchte: u = ((m_0 - m_u) / m_u) mal 100 Prozent

**Messwerte pro Probe:**
- Holzfeuchte u in Prozent
- Zuordnung zu Probe und Zone
- Abweichungen dokumentieren

**Toleranz:** Alles ausserhalb (8 bis 16) Prozent oder einzeln abweichende Proben als Ausschlusskriterium kennzeichnen [UNVERIFIED]

### 4.4 Dichte und Rohdichte

**Norm:** ISO 13061-2:2014 (Kleinproben) oder DIN 52182 (nach Prüfung)

**Methode 1 (Geometrische Methode, [UNVERIFIED]):**
1. Nach der Biegepruefung aus dem Bruchstueck ein Staebchen (ca. 10 x 10 x 20 mm) entnehmen
2. Massen genau ausmessen (auf 0,1 Millimeter)
3. Volumen berechnen: V = l mal b mal h in Kubikzentimeter
4. Dichte rho = m / V in kg / Kubikmeter
5. **Bezugsfeuchte:** Nach EN 384 auf u = 12 Prozent Holzfeuchte korrigieren:
   rho_12 = rho_u mal (1 + (12 - u) mal 0,005) [Korrekturfaktor 0,005 pro Prozent Feuchte fuer Nadelholz]

**Methode 2 (Wasser-Verdraengung, [UNVERIFIED]):**
- Staebchen in destilliertes Wasser tauchen, Volumenaenderung mit Messzylinder messen, dann trocknen und wiegen
- Genauigkeit: Plus/minus 3 Prozent [UNVERIFIED]

**Messwerte pro Zone:**
- Rohdichte bei Prueffeuchte rho_u (kg/m^3)
- Dichte bei 12 Prozent Referenzfeuchte rho_12 (kg/m^3)
- Holzart, Herkunft (falls bekannt)

### 4.5 Querschnitts-Abmessungen

**Messung vor der Pruefung:**

1. Laenge: Mit Schieblehre oder Messstab an mindestens 3 Stellen (oben, Mitte, unten) auf 0,1 Millimeter
2. Breite b und Hoehe h: An mindestens 5 Positionen entlang der Probenlaenge (4 Millimeter von den Enden, danach alle 5 Zentimeter), auf 0,1 Millimeter
3. Sollte die Abweichung zwischen Min und Max groesser als 2 Millimeter sein: [UNVERIFIED] Probe als fehlerhaft kennzeichnen (Oberflaechen-Risse, Verformung)
4. Mittelwerte berechnen: b_eff = arithmetisches Mittel aller Breite-Messwerte

---

## 5. Ausschlusskriterien und Qualitaetskontrolle

Eine Probe wird VOR der Pruefung oder WAEHREND der Pruefung ausgeschlossen und dokumentiert, wenn eines der folgenden Kriterien erfuellt ist:

### 5.1 Zonenzuordnung unklar
- Herkunft unbekannt oder widersprüchlich dokumentiert
- Sekundaer-Indikatoren liefern keine sichere Aussage (siehe Abschnitt 1.2)

### 5.2 Oberflaechen-Fehler und Maengel
- Oberflaechen-Risse oder Checks groesser als 1 Millimeter Tiefe
- Aeste groesser als 5 Millimeter Durchmesser im Prueflängen-Bereich (mittleres Drittel fuer Biegung)
- Faserabweichung (Spiralwuchs) groesser als 15 Grad [UNVERIFIED]
- Faeule-Verfaerbung, Weichrotte oder biologischer Befall
- Oberflaechen-Rauheit nach dem Saegen groesser als 3 Mikrometer (sichtbar raue Schnittflaechen: kann den E-Modul verfaelschen)
- Verschaelungen oder Abrisse an den Saegeschnitten groesser als 1 Millimeter Laenge

### 5.3 Waehrend der Pruefung
- **4-Punkt-Biegung:** Bruch ausserhalb des mittleren Drittels zwischen den inneren Lastpunkten, oder Schubbruch statt Faserbruch
- **Druckversuch:** Instabilitaet (Knickung) statt Materialversagen, Bruch an geklebter Flaeche
- **Biegung und Druck:** Abbruch vor erkennbarem Bruch durch Messfehler oder Maschinenschaden

### 5.4 Holzfeuchte-Abweichung
- Holzfeuchte waehrend der Pruefung: Proben ausserhalb (8 bis 16) Prozent, oder mehr als +/- 3 Prozent Abweichung zwischen zwei Proben aus derselben Zone [UNVERIFIED]

**Dokumentation:** Jede ausgeschlossene Probe wird auf dem Pruefprotokoll vermerkt mit Grund und Datum.

---

## 6. Statistische Auswertung

### 6.1 Design: Gepaarte Stichproben

**Zentrale Annahme:** Druck- und Zugprobe werden aus demselben Balkensegment an derselben Laengsposition entnommen. Darum sind sie nicht unabhaengig, sondern gekoppelt (gepaart). Der statistische Vergleich erfolgt daher als:

- **Gepaarter t-Test** fuer Normalverteilung
- **Wilcoxon-Vorzeichen-Rang-Test** als nichtparametrische Alternative

nicht als unabhaengiger t-Test oder ANOVA auf Gruppen.

### 6.2 Vorbereitung: Differenzen und Normalitaet

**Schritt 1:** Fuer jedes Balkensegment die Differenz pro Pruefgroesse berechnen:
- Delta_f_m = f_m(Zug) - f_m(Druck)  [Biegefestigkeit]
- Delta_f_c,0 = f_c,0(Zug) - f_c,0(Druck)  [Druckfestigkeit]
- Etc.

**Schritt 2:** Normalitaetstests auf die Differenzen durchfuehren:
- **Shapiro-Wilk-Test:** H0 = Normalverteilung; wenn p > 0,05 weitermachen mit t-Test, sonst Wilcoxon nutzen
- **Q-Q-Plot:** Visuell ueberpruefen, ob Differenzen auf der Diagonale liegen
- **Varianz-Homogenitaet:** Levene-Test auf die Gruppen (Druck vs. Zug)

**Quelle:** [UNVERIFIED: Standard-Lehrbuechern Statistik; keine Normvorgabe in EN 384 oder DIN]

### 6.3 Haupttest: Zweiseitiger Vergleich Druck vs. Zug

**Hypothese:**
- H0: Mu_Zug = Mu_Druck  (Keine Abweichung zwischen Zonen)
- H1: Mu_Zug ≠ Mu_Druck  (Bedeutsame Abweichung, zweiseitig)
- Signifikanzniveau: Alpha = 0,05

**Fall A (Normal verteilt):** Gepaarter t-Test
```
t = (D_quer) / (s_D / sqrt(n))
wobei D_quer = Mittelwert der Differenzen
      s_D    = Standardabweichung der Differenzen
      n      = Stichprobenumfang (Ballenkensegmente)
```
Kritischer t-Wert bei n - 1 Freiheitsgraden ablesen oder p-Wert aus Statistiksoftware.

**Fall B (nicht normal verteilt):** Wilcoxon-Vorzeichen-Rang-Test
- Rangsummen-Statistik berechnen und mit kritischem Wert vergleichen
- p-Wert durch Permutationsmethode oder exakte Verteilung bestimmen

**Ergebnis:** Falls p < 0,05, die Nullhypothese ablehnen: Die Zonen unterscheiden sich signifikant.

**Quelle:** [UNVERIFIED: Standardmethoden; nicht explizit in EN 384 oder Altholz-Normen, jedoch Best-Practice]

### 6.4 Nebeneffekt: Dichte als Kovariate (ANCOVA)

**Problem:** Alter oder Wuchsort führen zu unterschiedlicher Holzfeuchte und Dichte. Die Dichte ist ein Stoerfaktor: ein Balken mit kleinerer Dichte kann weniger Festigkeit haben, unabhaengig von der Zone.

**Loesung:** Dichte als Kovariate in die Analyse einbeziehen (ANCOVA):

1. Beide Zonen haben aehnliche Dichte? (Pruefen: Korrelatoren zwischen Zone und Dichte berechnen)
2. Falls nein (z.B. Druck-Zone systematisch dichter): ANCOVA durchfuehren, die Festigkeit auf Dichte bereinigt
3. Alternative: Festigkeitswert / Dichte bilden (Spezifische Festigkeit, [UNVERIFIED])

### 6.5 Mehrfach-Positionen pro Balken (zweifaktorielles Modell)

Falls mehrere Probensegmente pro Balken entnommen werden (z.B. 3 Segmente pro Balken an unterschiedlichen Laengspositionen), ist dies ein Nested Design:

```
Effekt A: Zone (Druck vs. Zug)
Effekt B: Balken (Balken 1 bis 15)
Nesting: Segment(Balken)
```

**Gemischtes Modell:** Balken als Zufallsfaktor, Zone als fester Effekt
- Fixed Effect: Zone
- Random Effect: Balken
- Anpassung fuer mehrfache Messungen pro Balken

**Software:** z.B. R (lme4), SPSS (Mixed Models), oder Minitab

### 6.6 Effektgroesse und Konfidenzintervalle

**Cohen's d (Effektgroesse):**
```
d = |Mu_Zug - Mu_Druck| / s_gepult
```
wobei s_gepult = gemeinsame Standardabweichung

- d < 0.2: Kleiner Effekt
- d = 0.5: Mittlerer Effekt
- d > 0.8: Grosser Effekt

**95-Prozent Konfidenzintervall um die Differenz:**
```
CI = (D_quer ± t_crit * SE_D)
SE_D = s_D / sqrt(n)
```

Falls 0 nicht im Intervall liegt: signifikante Abweichung.

**Quelle:** [UNVERIFIED: Standard aus Cohen und Statistik-Lehrbuechern]

---

## 7. Qualitaetsanforderungen an den Versuchsablauf

### 7.1 Mess- und Pruef-Kalibrierung

1. **Schieblehren / Messschieber:** Jaehrlich gegen Kalibrierblöcke prufen, Unsicherheit notieren (typ. +/- 0,05 Millimeter)
2. **Belastungs-Maschine:** Zertifikat vorlegen, dass die Kraft-Aufbringung auf +/- 1 Prozent genau ist (EN ISO 7500-1)
3. **Trockenschrank:** Temperatur-Ueberwachung mit externe Thermometer, +/- 2 Grad Celsius Toleranz
4. **Waagen (Holzfeuchte):** Kalibrierung auf +/- 0,1 Gramm oder besser vor Versuchsbeginn

### 7.2 Umgebungsbedingungen waehrend der Pruefung

- Labor-Temperatur: 20 plus/minus 2 Grad Celsius
- Relative Luftfeuchte: 65 plus/minus 5 Prozent
- Messung mindestens 2 mal waehrend der Pruefung (Begin und End); bei Abweichung Pruefungen unterbrechen
- Belastungsmaschine: Vor der ersten Pruefung mit 10-20 Probelastungen bei 50 Prozent max. Last warmlaufen lassen [UNVERIFIED]

### 7.3 Pruef-Protokollierung

Fuer jede Probe (durchnummeriert):
- Balken-ID, Segment-Nummer, Zone (Druck / Zug)
- Querschnitts-Abmessungen b, h auf 0,1 Millimeter
- Laenge L auf 0,1 Millimeter
- Pruefart, Datum, Uhrzeit, Operator
- Bruchlast F_max, Bruch-Modus (Faserbruch / Schub / Sonstiges)
- Festigkeit berechnet (f_m oder f_c,0)
- Holzfeuchte u in Prozent
- Dichte rho_u (Frisch) und rho_12 (bezogen auf 12 Prozent)
- Abweichungen / Ausschlussgründe

### 7.4 Digitale Datenhaltung

- Alle Messungen in Excel oder CSV speichern (Maschinenausgabe + manuell gemessene Werte)
- Rueckverfolg sicherstellen: Jede Zeile = eine Probe, eindeutige ID
- Backup der Pruef-Protokolle (Papier oder gescannt)
- Vers Ion Kontrolle bei Aenderungen (alte Werte beibehalten, Aenderungen mit Datum und Grund notieren)

---

## 8. Power-Analyse und Stichprobenplanung (a priori)

### 8.1 Eingabeparameter fuer G*Power (oder äquivalent)

Nach Abschluss des Pilotversuchs mit 3 bis 5 Balkensegmenten:

1. **Test-Art:** Paired t-test (two-tailed)
2. **Alpha-Fehler:** 0.05
3. **Power (1 - Beta):** 0.80 (angestrebt)
4. **Effektgroesse (Cohen's d):** Aus Pilotdaten berechnen
   - Falls d ca. 0.5 bis 1.0 (mittler bis grosser Effekt): n ca. 10 bis 15 Balken
   - Falls d < 0.3 (kleiner Effekt): n ca. 50+ Balken (unrealistisch fuer Altholzproben)
5. **Ausgabe:** Erforderliches n fuer Target-Power

### 8.2 Hypothetisches Rechenbeispiel

Falls der Pilotversuch zeigt:
- Mittlerer Unterschied in Biegefestigkeit: Delta_f_m ca. 3 MPa
- Standardabweichung der Differenzen: s_D ca. 4 MPa
- Cohen's d = 3 / 4 = 0.75 (mittlerer Effekt)

G*Power ergibt dann: n ca. 12 Balkensegmente erforderlich, um mit 80-prozentiger Power einen signifikanten Unterschied zu finden.

**Dokumentation:** Die Power-Analyse vor dem Vollversuch durchfuehren und im Bericht zitieren.

---

## 9. Ausblick und Limitationen

### 9.1 Definitionen "Restfestigkeit"

Diese Arbeit misst **Relativfestigkeit** (Zug- vs. Druckzone) auf dem Altholz-Material selbst, nicht einen absoluten Restfestigkeits-Prozentsatz gegenueber Neuholz-Referenzen. Falls gewuenscht:
- Ergaenzung: Vergleich mit EN 338 Sortierklasse fuer die identifizierte Holzart [UNVERIFIED, erfordert zusaetzliche Proben]
- Oder: Literaturvergleich (Rug & Seemann 1989, Ehlbeck & Görlacher 1987-1990)

### 9.2 Raeumliche Variabitaet

Proben aus derselben Laengsposition und Querschnitt sind staerker korreliert als Proben aus weit auseinander liegenden Positionen. Wenn mehrere Segmente pro Balken entnommen werden, ist die Pseudo-Replikation zu beachten (siehe Abschnitt 6.5).

### 9.3 Biologische und chemische Degradation

Diese Methodik misst Materialeigenschaften, nicht die Ursachen (Kriechen, Insektenbefall, Enzymatische Degradation). Falls Zeit vorhanden: Histologische Querschnitte oder Nah-Infrarot-Spektroskopie [UNVERIFIED, erweitert den Scope erheblich].

---

## Quellenverzeichnis

Normen (zitiert und verifiziert):

- [DIN EN 13183-1:2002-07] Holzfeuchtebestimmung von Schnittholz - Teil 1: Darrmethode. Deutsches Institut fuer Normung e.V.
  https://www.dinmedia.de/en/standard/din-en-13183-1/43796306

- [DIN 52185] Pruefung von Holz; Druckversuch parallel zur Faser. Deutsches Institut fuer Normung e.V.
  https://standards.globalspec.com/std/797889/din-52185

- [EN 384:2016+A1:2018] Structural timber — Determination of characteristic values of mechanical properties and density.
  https://www.en-standard.eu/en-384-2016-a1-2018-structural-timber-determination-of-characteristic-values-of-mechanical-properties-and-density/

- [ISO 13061-2:2014] Physical and mechanical properties of wood — Test methods for small clear wood specimens — Part 2: Determination of density for physical and mechanical tests.
  https://www.iso.org/standard/60064.html

- [ISO 13061-17] Physical and mechanical properties of wood — Test methods for small clear wood specimens — Part 17: Determination of ultimate stress in compression parallel to grain.
  https://standards.globalspec.com/std/9948610/iso-13061-17

Weiterfuehrende Literatur (Kontext):

- Ehlbeck, J. & Görlacher, R. (1987-1990). Festigkeitsuntersuchungen an altem Konstruktionsholz. Jahrbuch Sonderforschungsbereich 315 Karlsruhe & Bauen mit Holz, 1990.

- Rug, W. & Seemann, B. (1989). Festigkeit von Altholz. *Bauen mit Holz*, 10, 696-699.

- Estruch-Guitart, V., et al. (2017). Shear modulus of old timber. *iForest - Biogeosciences and Forestry*, 10, 446-450.
  https://iforest.sisef.org/contents/?id=ifor1787-009

- ResearchGate: Division of timber beams into clear and weak wood zones.
  https://www.researchgate.net/figure/Division-of-timber-beams-into-clear-and-weak-wood-zones_fig2_267410445

- Springer: Characterisation of hardwood shear strength using an asymmetric four-point bending test.
  https://link.springer.com/article/10.1617/s11527-026-03235-w

---

**Status:** Entwurf (draft). Diese Methodik erfordert Abstimmung mit der Betreuerin, insbesondere zur Stichprobengröße, zu den Toleranzen bei der Zonenzuordnung und zur Behandlung von Pilotdaten. Alle mit [UNVERIFIED] gekennzeichneten Angaben sind Best-Practice oder aus der Altholz-Literatur abgeleitet, ersetzen aber nicht die normative Pruefung waehrend der Planung.

**Letzter Entwurf:** 2026-09-20
**Autor:** Claude Haiku 4.5
Co-Authored-By: Claude Haiku 4.5 <noreply@anthropic.com>
