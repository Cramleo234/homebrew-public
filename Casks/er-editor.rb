cask "er-editor" do
  version "1.1.1"
  sha256 "7538ac15449f0e67a421869281ef1e5b9879d0939834d9f56307666ffff81174"

  url "https://github.com/Cramleo234/er-editor/releases/download/v#{version}/ER-Editor-#{version}.dmg"
  name "ER-Editor"
  desc "Kleiner ER-Diagramm-Editor (Chen-Notation) mit beschriftbaren Kanten"
  homepage "https://github.com/Cramleo234/er-editor"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "ER-Editor.app"

  uninstall quit: "local.private.er-editor"

  zap trash: [
    "~/Library/Caches/local.private.er-editor",
    "~/Library/HTTPStorages/local.private.er-editor",
    "~/Library/Preferences/local.private.er-editor.plist",
    "~/Library/Saved Application State/local.private.er-editor.savedState",
    "~/Library/WebKit/local.private.er-editor",
  ]

  caveats <<~EOS
    ER-Editor ist nicht von Apple notarisiert. Beim ersten Start unter
    Systemeinstellungen → Datenschutz & Sicherheit auf „Trotzdem öffnen“ klicken.

    Diagramme sind .erd-Dateien (Ablage → Sichern, Öffnen, Zuletzt benutzt);
    .json-Dateien aus der Browser-Version lassen sich ebenfalls öffnen.
    Ein früher automatisch gespeichertes Diagramm erscheint beim ersten Start
    einmalig als neues Dokument – bitte sichern.
  EOS
end
