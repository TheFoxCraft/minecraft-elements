# Minecraft Elements - Community Edition (Fanmade)

Minecraft Elements ist ein Projekt, das ursprünglich von SparkofPhoenix erstellt wurde..
Diese Version ist eine eigens nachprogrammierte Version aus einer Mischung von Elements 1 und 2 sowie teilweise 3, enthält aber stark abgewandelte Inhalte. Mehr dazu weiter unten.

# Entstehung

Angefangen hatte es mit Stone Attack, welches Spark auch als Datapack veröffentlichte. Im Folgejahr gab es dann Minecraft Elements von welchem früh bekannt wurde, dass dieses nicht veröffentlicht werden würde.
Daraufhin habe ich mir zur Aufgabe gemacht, meine eigene Version von Minecraft Elements nachzuprogrammieren. Zu Beginn hatte ich kaum Erfahrung und arbeitete mit Command-Blöcken, später dann mit Datapacks und habe Schritt für Schritt dazugelernt.
Nachdem Elements 2 ein Jahr später startete und meine Version noch lange nicht fertig war, hatte ich angefangen einzelne Elemente aus Elements 2 in meiner Version zu integrieren.
Auch als Spark, ohne das Datapack direkt zu veröffentlichen, Community-Server erstellte, habe ich weiter gearbeitet, da das Projekt zu diesem Zeitpunkt so weit Fortgeschritten war, dass aufhören nicht in Frage kam.
Als Elements 3 startete, war meine Version noch immer nicht fertig, allerdings bereits spielbar und ich beschloss parallel zu Elements 3 mein Projekt mit etwa 20 anderen begeisterten Spielern zu starten.
So baute ich unter dem Spielen auch noch einzelne Elemente aus Elements 3, wie zum Beispiel dem Handelsplatz ein, auch wenn das Projekt grundsätzlich im Stil von Elements 1 und 2 blieb.
Lange Zeit war ich mir dann nicht sicher ob ich das Pack für jeden zugänglich veröffentlichen kann und will, habe mich jetzt aber dafür entschieden, um auch mein Versprechen aus den ersten Videos, die ich zu diesem Projekt gemacht habe, einzuhalten.

# Features

Grundsätzlich kann das Projekt als eine Mischung aller Features von Elements 1+2 sowie einzelner Elemente von Elements 3 und natürlich meinen Ideen und Vorstellungen gesehen werden.
Soweit ich mich erinnern kann, sind alle Features aus dem echten Projekt eingebaut.
Ich habe außerdem an vielen Stellen Kleinigkeiten verbessert.

Einige der Hauptfeatures sind:

- 6 Stages + Finaler Boss mit eigenen Rätseln sowie den Farmbaren Ressourcen (teils übernommen, teils eigene) mit Farmslot-System
- Fast alle Unique-Items aus Element 1/2 sowie einzelnen eigenen, welche unter anderem durch Insider auf unserem Community-Server entstanden sind
- Die Villager im Hub, sowie dem Techniker mit teils eigenen, teils übernommenen Dialogen
- Für jede Stage einen Boss mit Custom Fähigkeiten sowie eigens gebauten Boss-Räumen
- Alle Features der Enderchest sowie einzelne zusätzliche wie das Level-Casino und weiteren Konfigurations-Möglichkeiten als Admin und Spieler
- Abgabe-Ziele skalierend anhand der Spielerzahl
- Admin-Einstellungen innerhalb der Enderchest, um zum Beispiel Shops für alle zu öffnen, wenn eine Klasse unbesetzt ist.
- Sperren von Abgabezielen durch Admins
- Mana-System sowie alle bekannten Mana-Items
- ... Und noch viel mehr Kleinigkeiten die mir gerade nicht einfallen, oder nicht relevant für diese Liste sind.

# Installation

### Die Minecraft-Version ist **1.21.3**

Da Minecraft in den 1.21.x Versionen in jeder Version sehr viel an dem Datapack-System Verändert hat, empfehle ich keine höhere Version zu verwenden. Auch eine niedrigere Version ist unmöglich, da es in 1.21.3 besonders große Änderungen gab und wichtige Features in niedrigeren Versionen fehlen würden.

## **So richtest du Elements ein:**

- Lade dir von [Modrinth](https://modrinth.com/project/minecraft-elements) oder [Github Releases](https://github.com/TheFoxCraft/minecraft-elements/releases) das Datapack herunter.
- Das Hauptdatapack muss auf deinem Server oder Welt in den /datapacks Ordner.
  - Du wirst zu beginn Adminrechte brauchen. Im Singleplayer kannst du die Welt auch ohne Cheats erstellen und danach dir über "Open to LAN" kurzzeitig Rechte geben.
  - Es spielt keine Rolle ob du das Datapack bei Welterstellung schon im Datapacks Ordner hast oder erst danach. Du musst dann allerdings den Server neu starten oder die Welt neu betreten.
  - Wenn du Probleme beim Installieren des Datapacks hast, such auf Youtube oder ähnlichem nach Tutorials
- Bevor du richtig starten kannst solltest du noch das Essentielle Resourcepack installieren.
  - Dieses findest du bei Modrinth im "Versions" Tab oder auch bei Github Releases zum Download.
  - Im Singleplayer kannst du es wie jedes normale Texturepack installieren. Auf Servern verteilst du es entweder an jeden Spieler manuell, oder nutzt die eingebaute Server-Resourcepack Funktion.
    - Gehe dazu auf deinem Server (nachdem er einmal gestartet wurde) in die server.properties Datei.
    - Dort findest du ca. bei Zeile 50 einmal `require-resource-pack` das solltest du auf `true` stellen.
    - bei `resource-pack` musst du den download zum aktuellen pack eingeben. Dieser ist aktuell `https://github.com/TheFoxCraft/minecraft-elements/releases/download/v1.13.0/Elements_Essential_V1.13.0.zip`
    - Du kannst außerdem bei `resource-pack-sha1` den "Hash" des Resourcepacks angeben um das erneute Downloaden bei jedem Rejoin zu verhindern. Diesen bekommst du auf Windows so: `Get-FileHash .\Elements_Essential_V1.13.0.zip -Algorithm SHA1`, wenn du das Resourcepack im selben Ordner hast, in dem das Terminal geöffnet ist. Der Hash ist aktuell bei Version 1.13 dieser:  `81DAF69726F545E6EEAE024EAABA8E17ADF4EDDA`
- Wenn du jetzt das erste mal in die Welt joinst, solltest du in der normalen Overworld sein. Jetzt brauchst du Operator-Rechte um einmal diesen Command auszuführen: `/function elements:admin-start`. Der Command sollte als Spieler und nicht in der Konsole ausgeführt werden und gibt dir jetzt Datapack-Ausgehend die Admin-Rolle.
- Platziere jetzt eine Enderchest, du solltest dort die Admin-Settings finden, dort kannst du die einmalige Installation von Elements starten. Es wird kurz etwas laggen während alles eingerichtet wird.
- Jetzt bist du so weit um andere Spieler mit auf den Server zu lassen. Die Spieler landen dann direkt im HUB.
- Sobald du bereit bist kannst du wieder in den Admin-Settings auf "Starte Projekt" drücken. Danach musst du im Chat bestätigen. Ab jetzt brauchst du grundsätzlich keine Operator-Rechte mehr. Alle weiteren Einstellungen als Admin, zumindest was Elements betreffen, können in der Enderchest vorgenommen werden.
- Damit bist du Fertig und Elements läuft. Wenn du Probleme hast, findest du auf [thefoxcraft.de](https://thefoxcraft.de) den Link zu meinem Discord Server.
- **Zusätzliches**
  - Spieler die wollen können sich, beispielsweise von Github Releases, das "Additional" Resourcepack herunterladen und Installieren. Dieses hat unter anderem noch ein paar schöne Icons für die Enderchest.
  - Nutzer-Rollen:
    - Du kannst anderen Spielern auch die Admin-Rolle geben um ihnen Zugriff auf die Admin-Settings zu geben. Dazu brauchst du nochmal OP-Rechte, dann kannst du folgenden Command ausführen: `scoreboard players set <SpielerName> elements_rank_admin 1` (Auch in der Server-Konsole möglich)
    - Du kannst auch Zweitaccounts als Cam-Account einstufen indem du ihnen die Cam-Rolle gibst: `scoreboard players set <SpielerName> elements_rank_cam 1`. Dann sind sie permanent im Spectator und haben einen Custom `/trigger` Command um sich zwischen den Welten zu bewegen.

# Server Leistung

Wie bereits gesagt entstand dieses Projekt, während ich kaum Ahnung von Datapacks hatte, weswegen der Code größtenteils leider nicht optimiert ist.
Bei zu vielen Spielern kann der Server daher schnell in die Knie gehen, allerdings denke ich, dass bei unter 10 Spielern mit einem einigermaßen starken Server keine Probleme auftreten.
Genauer kann ich es allerdings nicht sagen, ich habe nur meine Persönlichen Erfahrungen, dass ca. 5 Spieler (bei gleicher Hardware) absolut kein Problem waren; bei 38 Spielern von denen zum Schluss ca 3-5 gleichzeitig online waren,ist mein Server schnell auf unter 12 TPS gefallen. Dies galt aber für das Lategame, denn je weiter der Fortschritt ist, desto mehr Funktionen sind aktiv.


# Hilfe

Es gibt einige Guides auf Github, siehe hier: https://github.com/TheFoxCraft/minecraft-elements/tree/main/guides

Bei weiteren Fragen gerne auf dem Discord im Ticket oder Elements-Chat nachfragen. 

Die Guides werden vermutlich später auch noch erweitert.


# Contributing

Dieses Projekt ist eigentlich noch immer nicht zu 100% fertig, wenn du also noch coole Features hinzufügen, Performance verbessern oder Bugs fixen willst, kannst du gerne eine Pull Request erstellen.

Auch wenn ich nicht mehr an diesem Projekt weiter arbeite, werde ich mir jede Pull Request ansehen. Ob es deine Request auch in das Haupt-Pack schafft kann ich nicht garantieren.

(Es gelten die Bedingungen in der Lizenz)

# Verwendung / Lizenz

Um zu wissen was du alles darfst und was nicht, lies dir vor der Nutzung bitte die Lizenz durch.

# Credits

Die Grundidee für das Projekt "Minecraft Elements", sowie einzelne Inhaltliche Elemente wie die Unique-Items sind inspiriert vom offiziellen Projekt von [SparkofPhoenix](https://www.youtube.com/@SparkofPhoenix)
Jeglicher Code ist allerdings selbst geschrieben.
Diese Version von "Minecraft Elements" soll in keiner Weise SparkofPhoenix Credits oder Ähnliches wegnehmen, sondern existiert in der Intention meine Eigene Version zu Programmieren,
Datapacks kennen zu lernen und damit auch anderen die Möglichkeit zu geben meine Version zu spielen.

**Wer die offizielle Version von Minecraft Elements spielen möchte, sollte sich auf dem [Discord Server](https://discord.com/invite/sparkarmy) von Spark umsehen, ob dort wieder ein Offizieller Community-Server gehostet wird.**

Dieses Projekt verwendet außerdem das Raycasting-Library-Datapack [Retina](https://modrinth.com/datapack/retina)

# Sonstiges

Bei Problemen oder Fragen findest du auf [thefoxcraft.de](https://thefoxcraft.de) den Einladungslink zu meinem Discord Server. Weitere Infos und Ankündigungen zu Elements findest du dort ebenfalls.
