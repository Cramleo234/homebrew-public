cask "wuerfelparadies" do
  version "1.2.0"
  sha256 "f2cd18c91e9af0957db229f062ef830d80e8fbab723e5a2ed97733aacdacc1fd"

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
