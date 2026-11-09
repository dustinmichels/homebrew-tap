cask "screenie" do
  version "0.1.2"
  sha256 "3386b1a308ce5705ae9b5af80a5492690ce047f7e7f57e85653490fa5a6f5424"

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
