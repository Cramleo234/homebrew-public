# Homebrew-Tap für Mischpult

[Mischpult](https://github.com/Cramleo234/mischpult) ist eine kostenlose Menüleisten-App für macOS 14.2+, die Lautstärke, Ausgabegerät und Equalizer für jede App einzeln regelt.

## Installation

```bash
brew tap cramleo234/mischpult
brew trust cramleo234/mischpult
brew install --cask cramleo234/mischpult/mischpult
```

> **Warum `brew trust`?** Ab Homebrew 6 müssen Taps, die nicht von Homebrew selbst stammen, einmal freigegeben werden.

Mischpult ist nicht von Apple notarisiert. Beim ersten Start unter **Systemeinstellungen → Datenschutz & Sicherheit** auf **Trotzdem öffnen** klicken.

## Aktualisieren

```bash
brew update
brew upgrade --cask cramleo234/mischpult/mischpult
```

## Entfernen

```bash
brew uninstall --cask cramleo234/mischpult/mischpult
```

## Lizenz

[MIT](LICENSE)
