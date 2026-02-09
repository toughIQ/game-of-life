# Conway's Game of Life - Web Editor

Dies ist eine moderne, responsive Web-Implementierung von John Conways berühmtem "Game of Life" (Spiel des Lebens). Es handelt sich um einen zellulären Automaten, der als "Zero-Player-Game" konzipiert ist – die Entwicklung hängt allein vom Startzustand ab.

Dieses Projekt wurde als **Single-File-Applikation** entwickelt. Das bedeutet, der gesamte Code (HTML, CSS, JavaScript) befindet sich in einer einzigen Datei (`game-of-life.html`), was das Teilen und Ausführen extrem einfach macht.

## Über das Spiel

Das Spielfeld besteht aus einem Raster von Zellen, die entweder "lebendig" oder "tot" sein können. In jedem Zeitschritt (Generation) wird der Zustand jeder Zelle basierend auf der Anzahl ihrer lebenden Nachbarn neu berechnet (Geburt, Überleben oder Tod durch Einsamkeit/Überbevölkerung).

> **Tipp:** Eine detaillierte Anleitung zur Bedienung, Historie und eine Erklärung der verschiedenen Muster findest du direkt im Spiel über den Hilfe-Button (**?**) oben rechts.

## Features

* **Interaktiver Editor:** Zeichnen von Zellen mit der Maus oder Touch.
* **Muster-Bibliothek:** Große Auswahl an bekannten Objekten (Gleiter, Raumschiffe, Oszillatoren).
* **Import-Funktion:** Lade eigene Muster (Plaintext `.cells` Format) direkt aus dem [LifeWiki](https://conwaylife.com/wiki/).
* **Szenarien:** Vorgefertigte Setups wie "Ursuppe", "Party" oder "Exotisch".
* **High-Performance:** Unterstützt riesige Raster (bis zu 1 Pixel Zellgröße).
* **Mehrsprachig:** Deutsch und Englisch.

## Nutzung

### Variante 1: Statisch (Empfohlen für schnellen Test)
Da das Projekt in einer einzigen Datei läuft, musst du nichts installieren.
1.  Lade die Datei `game-of-life.html` herunter.
2.  Öffne sie in einem beliebigen modernen Webbrowser.

### Variante 2: Als Container (Docker / Podman)
Für Server-Deployments oder isolierte Umgebungen kannst du das Spiel in einem leichten Nginx-Container betreiben. Ein passendes `Dockerfile` liegt bei.

#### Image bauen
```bash
# Docker
docker build -t game-of-life .

# Podman
podman build -t game-of-life .
```

#### Container starten
Der Container lauscht intern auf Port 80. Wir mappen ihn hier beispielhaft auf Port 8080 des Hosts.

```bash
# Docker
docker run -d -p 8080:80 game-of-life

# Podman
podman run -d -p 8080:80 game-of-life
```

#### Spielen
Öffne deinen Browser und gehe auf:
[http://localhost:8080](http://localhost:8080)

## Credits

Technische Umsetzung: [toughIQ](https://github.com/toughIQ/game-of-life)
Muster-Daten basieren teilweise auf dem [Life Lexicon](https://playgameoflife.com/lexicon) von Stephen Silver.
