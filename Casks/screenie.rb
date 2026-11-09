cask "screenie" do
  version "0.1.1"
  sha256 "b7012c8f12341d06d6ff0d2f666f493643b85b5934080c748628ab731ce7cbb1"

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
