cask "wuerfelparadies" do
  version "1.0.0"
  sha256 "3eff125fe0c8cc1f6e2ad8dbb7e25440ca0ae602a918081f02fa65f02c2cf1fe"

  url "https://github.com/Cramleo234/wuerfelparadies/releases/download/v#{version}/Wuerfelparadies-#{version}.dmg"
  name "Kris kleines Würfelparadies"
  desc "Beliebig viele 3D-Würfel mit Klang über den Bildschirm rollen lassen"
  homepage "https://github.com/Cramleo234/wuerfelparadies"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Kris kleines Würfelparadies.app"

  uninstall quit: "local.private.wuerfelparadies"

  zap trash: [
    "~/Library/Caches/local.private.wuerfelparadies",
    "~/Library/HTTPStorages/local.private.wuerfelparadies",
    "~/Library/Preferences/local.private.wuerfelparadies.plist",
    "~/Library/Saved Application State/local.private.wuerfelparadies.savedState",
    "~/Library/WebKit/local.private.wuerfelparadies",
  ]

  caveats <<~EOS
    Kris kleines Würfelparadies ist nicht von Apple notarisiert. Beim ersten Start unter
    Systemeinstellungen → Datenschutz & Sicherheit auf „Trotzdem öffnen“ klicken.
  EOS
end
