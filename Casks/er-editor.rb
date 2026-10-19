cask "er-editor" do
  version "1.2.1"
  sha256 "ad469cf951dd935564064f6d8713f0950e930834592356cdf30b92a39c9d1f64"

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
