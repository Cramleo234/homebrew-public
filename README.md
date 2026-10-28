# Homebrew-Tap von Cramleo

Kostenlose Mac-Apps zum Installieren per [Homebrew](https://brew.sh).

## Einrichtung (einmalig)

```bash
brew tap cramleo234/public
brew trust cramleo234/public
```

> **Warum `brew trust`?** Ab Homebrew 6 müssen Taps, die nicht von Homebrew selbst stammen, einmal freigegeben werden.

## Apps

| App | Beschreibung | Installation |
| --- | --- | --- |
| [Mischpult](https://github.com/Cramleo234/mischpult) | Lautstärke, Ausgabegerät und Equalizer pro App (macOS 14.2+) | `brew install --cask cramleo234/public/mischpult` |
| [ER-Editor](https://github.com/Cramleo234/er-editor) | Kleiner ER-Diagramm-Editor (Chen-Notation) mit beschriftbaren Kanten (macOS 12+) | `brew install --cask cramleo234/public/er-editor` |
| [Kris kleines Würfelparadies](https://github.com/Cramleo234/wuerfelparadies) | Beliebig viele 3D-Würfel mit Klang (und Zitaten) über den Bildschirm rollen lassen (macOS 12+) | `brew install --cask cramleo234/public/wuerfelparadies` |

Die Apps sind nicht von Apple notarisiert. Beim ersten Start unter **Systemeinstellungen → Datenschutz & Sicherheit** auf **Trotzdem öffnen** klicken.

## Aktualisieren

```bash
brew update
brew upgrade --cask cramleo234/public/mischpult
brew upgrade --cask cramleo234/public/er-editor
brew upgrade --cask cramleo234/public/wuerfelparadies
```

## Lizenz

[MIT](LICENSE)
