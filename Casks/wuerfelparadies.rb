cask "wuerfelparadies" do
  version "1.1.0"
  sha256 "ed8efd094f38762cab8b1b808deda2a2c3e3bd3c714d2abddee3618819ec0c0a"

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
