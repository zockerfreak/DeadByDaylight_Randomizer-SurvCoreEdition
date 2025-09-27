## README ZUR VERSION 2.3 - VEE-UPDATE ##

HUHW zu meinem kleinen Tool, mit welchem man sich für Dead by Daylight zufällig Perks, Items, Addons und Opfergabenauswählen kann. Viel Spaß damit!
Es ist lange noch nicht perfekt, deshalb bitte ich, mir Auffälligkeiten (Fehler, Probleme, Vorschläge und Verbesserungsvorschläge) gerne auf Discord oder via Mail mitzuteilen: zckrfrk.business@t-online.de. Vielen Dank!

Zum Starten des Tools im entpackten Ordner die BAT-Datei "DBD Loadout Generator - SurvCore Editon - V2.3.bat" doppelklicken.
Um eine Verknüpfung auf dem Desktop zu erstellen auf die Datei "DBD Loadout Generator - SurvCore Editon - V2.3.bat" (Batch-Datei) rechtsklicken und Senden An > Desktop (Verknüpfung erstellen) auswählen.

Bei Verwendung des Tools gerne meinen Namen "@zckrfrk" erwähnen/angeben, ich freue mich immer! :D

Weitere Links:
Discord: https://discord.gg/xSXKYzK
Youtube: https://www.youtube.com/@zckrfrk
Streams: https://zfstream.de

Danke, dass du mein Tool nutzt!

Beste Grüße,
Mari aka Zckrfrk


# CHANGELOG #
Zur leichteren Lesbarkeit wird das de oder en vor dem Dateinamen hier im Changelog weggelassen.


# VERSION 2.3 - VEE-UPDATE #
SurvCore Editon Version 2.3 - Update vom 27.09.2025 - DbD Version 9.2.0

1. DATEIEN
	1.1 Neue Perknamen von Vee wurden mit aufgenommen (Leben auf Tour / Eins, Zwei, Drei, Vier! / Geisternoten bzw. Road Life / One-Two-Three-Four! / Ghost Notes)
	1.2 Anpassungen vorgenommen
		• fehlerhaftes Offering (Waffen der Yamaoka-Familie → "Wappen der Yamaoka-Familie)
		• fehlerhafte EN-Perknamen (Detectives Hunch → Detective's Hunch / Well Make It → We'll Make It / Were Gonna Live Forever → We're Gonna Live Forever)

2. SKRIPT
	2.1 Kopfzeile entfernt und im Changelog mit aufgenommen (hier werden nun DbD Version und Updatedatum genannt)


# VERSION 2.2 - BATCH-PATCH #
SurvCore Editon Version 2.2 - Update vom 15.09.2025 - DbD Version 9.1.3 

• VBS Datei entfernt und stattdesssen eine Windows-Batchdatei erstellt, damit keine dubiosen Virus-Meldungen mehr auftreten.
• Skript-Header & README angepasst


# VERSION 2.1 #

1. GUI & SKRIPT
	1.1 Anpassung der Anordnung der Buttons
	1.2 Hinzufügen eines COPY-Buttons

2. DATEIEN
	2.1 Anpassen fehlerhafter Werte in CSV-Dateien (Umlaute)


# VERSION 2.0 #

1. FOG VIALS / NEBELFLÄSCHCHEN
	1.1 CSVs erstellt und befüllt:
		• _itemCategory_FV_Survivors
		• _addons_FV_Survivors
	1.2. Item-CSVs (_items_Survivors) angepasst:
		• Fog Vial Items hinzugefügt

2. MAPS / KARTEN
	2.1 Item-CSVs (_items_Survivors) angepasst
		○ DE
			• Regenbogenkarte → Kommentierte Karte
			• Karte → Gekritzelte Karte
			• Geheimnisvolle Karte hinzugefügt
		○ EN
			• Rainbow Map → Annotated Map
			• Map → Scribbled Map
			• Crypric Map hinzugefügt
	2.2 ItemCategory-CSVs angepasst (_itemCategory_M_Survivors) und die alten durch die neuen Item-Namen ersetzt
	2.3 ItemAddons-CSVs angepast (_addons_M_Survivors) und die alten durch die neuen Item-Namen ersetzt

3. MAPS / KARTEN
	3.1 Item-CSVs (_items_Survivors) und ItemCategory-CSVs (_itemCategory_K_Survivors) mussten NICHT angepasst werden
	3.2 ItemAddons-CSVs angepast (_addons_K_Survivors) und die alten durch die neuen Item-Namen ersetzt

4. PERKS
	4.1 Perk-CSVs (_perks_Survivors) vervollständigt auf 158 Perks und einzelne Anpassungen vorgenommen

5. SURVIVOR
	5.1 _chars_Survivors angepasst und die beiden Grimes Survs hinzugefügt

6. DATEIEN
	6.1 Alle Dateien in DE und EN wurden nochmal als "CSV UTF-8" anstatt als "CSV" gespeichert

7. SCRIPT-ANPASSUNGEN
	7.1 Allgemeine Änderungen
		• Versionierung & Branding hinzugefügt
		• Neue Kopfzeile mit Titel, Edition, Versionsnummer und Datum
		• Hinweis auf DbD-Version zur besseren Kompatibilitätsnachverfolgung
	7.2 Item-Erkennung & Add-on-System
		• Neuer Itemtyp hinzugefügt: "Nebel|Fog" wird nun als "FV" erkannt
		• Damit verbunden: neue Add-on-Datei ${prefix}_addons_FV_Survivors.csv wird geladen, falls vorhanden
		• Erweiterung der Add-on-Typen: FV wurde zur Liste der gültigen ItemCodes für Add-ons ergänzt


# WEITERE INFOS#
Es gibt bereits eine ungenutzte "Role"-Funktion, welche jedoch momentan nicht im Einsatz ist, da sich dieses Skript auf die Survivor-Rolle beschränkt.
Außerdem soll noch ein Feature integriert werden, dass auch die Chars randomisiert werden können. Außerdem noch eines, mit dem man per Checkbox auswählen kann, was alles zufällig generiert werden soll und was nicht. Am besten auch noch mit einer Config-Speicherung (dafür kann der "Sprache speichern" - Button zu einem "Config speichern" - Button werden.
Daneben ist auch geplant, das Projekt auf GIT hochzuladen.

Sollte es nochmals Probleme geben, dass Umlaute etc. falsch angezeigt werden, sind hier ein paar Beispiele für die Umkonvertierung, welche via Strg + H (Suchen + Ersetzen) durchgeführt werden kann.
Ã¼ → ü
Ã¶ → ö
Ã¤ → ä
Ã„ → Ä
Ã‰ → É
Ã© → é
Ã  → à (hier ist ein Leerzeichen hinter dem Ã)
Ãœ → Ü