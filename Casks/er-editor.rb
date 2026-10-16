cask "er-editor" do
  version "1.0.2"
  sha256 "85029925a51c9674529acb0eca8ea1f56701a18126b53586dbc2c10417f117a2"

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

    Diagramme werden automatisch gespeichert; mit „Speichern“ lassen sie sich
    als JSON sichern und mit „SVG“/„PNG“ als Bild exportieren.
  EOS
end
