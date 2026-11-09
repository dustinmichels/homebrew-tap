cask "screenie" do
  version "0.1.3"
  sha256 "4e0915c922bf4a92df61b4f05ad6970ee373ecb36e11b7ec19a9779551608abb"

  url "https://github.com/dustinmichels/screenie/releases/download/v#{version}/Screenie.dmg"
  name "Screenie"
  desc "Menu bar list of recent screenshots"
  homepage "https://github.com/dustinmichels/screenie"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Screenie.app"

  uninstall quit: "com.dustinmichels.Screenie"

  zap trash: "~/Library/Preferences/com.dustinmichels.Screenie.plist"
end
