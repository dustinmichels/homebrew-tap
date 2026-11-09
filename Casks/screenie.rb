cask "screenie" do
  version "0.1.0"
  sha256 "77be0eb042cad59ec273f8130d3b8895ff98f1d884af3bf2b6035ac622c04ed2"

  url "https://github.com/dustinmichels/screenie/releases/download/v#{version}/Screenie.dmg"
  name "Screenie"
  desc "Menu bar list of recent screenshots"
  homepage "https://github.com/dustinmichels/screenie"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Screenie.app"

  uninstall quit: "com.dustinmichels.Screenie"

  zap trash: "~/Library/Preferences/com.dustinmichels.Screenie.plist"
end
