# 🧬 Conway's Game of Life - Web Editor

This is a modern, responsive web implementation of John Conway's famous "Game of Life". It is a cellular automaton designed as a "zero-player game" – its evolution is determined by its initial state alone.

This project was developed as a **Single-File Application**. This means the entire code (HTML, CSS, JavaScript) is contained within a single file (`game-of-life.html`), making sharing and running it extremely easy.

## 🕹️ About the Game

The game board consists of a grid of cells that can be either "alive" or "dead". In each time step (generation), the state of every cell is recalculated based on the number of its living neighbors (Birth, Survival, or Death by Isolation/Overpopulation).

> **💡 Tip:** A detailed manual regarding controls, history, and explanations of various patterns can be found directly in the game via the Help button (**?**) at the top right.

## ✨ Features

* **🖱️ Interactive Editor:** Draw cells using mouse or touch.
* **📚 Pattern Library:** Large selection of known objects (Gliders, Spaceships, Oscillators).
* **📥 Import Function:** Load custom patterns (Plaintext `.cells` format) directly from [LifeWiki](https://conwaylife.com/wiki/).
* **🎭 Scenarios:** Preset setups like "Primordial Soup", "Party", or "Exotic".
* **🚀 High-Performance:** Supports huge grids (down to 1 pixel cell size).
* **🌍 Multilingual:** English and German.

## 🚀 Usage

### Option 1: Run Pre-built Container (Fastest ⚡)
You can pull and run the ready-made container image directly from Quay.io without building anything.

**Podman:**
```bash
podman run -d -p 8080:80 quay.io/toughiq/game-of-life:latest
```

**Docker:**
```bash
docker run -d -p 8080:80 quay.io/toughiq/game-of-life:latest
```

After starting, open your browser and visit: **[http://localhost:8080](http://localhost:8080)**

### Option 2: Static HTML (No Installation 📄)
Since the project runs in a single file, you don't need to install anything.
1.  Download the file `game-of-life.html`.
2.  Open it in any modern web browser.

### Option 3: Build Container Yourself 🛠️
For server deployments or if you want to modify the image, you can build it using the provided `Dockerfile`.

**Build Image:**
```bash
# Docker
docker build -t game-of-life .

# Podman
podman build -t game-of-life .
```

**Run Container:**
```bash
# Docker
docker run -d -p 8080:80 game-of-life

# Podman
podman run -d -p 8080:80 game-of-life
```

## 🏆 Credits

Technical Implementation: [toughIQ](https://github.com/toughIQ/game-of-life)
Pattern data and knowledge base sourced from [LifeWiki](https://conwaylife.com/wiki/) and [Life Lexicon](https://playgameoflife.com/lexicon) by Stephen Silver.
