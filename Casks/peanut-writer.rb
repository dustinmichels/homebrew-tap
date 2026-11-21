cask "peanut-writer" do
  version "0.1.3"
  sha256 "46867c3fcd82d26234bac5f2c4315546b8f05627d0d9e81e68a30eb000da5068"

  url "https://github.com/dustinmichels/peanut-writer/releases/download/v#{version}/Peanut-Writer.dmg"
  name "Peanut Writer"
  desc "Word processor that writes Markdown, with Typst preview and PDF and Word export"
  homepage "https://dustinmichels.github.io/peanut-writer/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "Peanut Writer.app"

  uninstall quit: "com.dustinmichels.peanutwriter"

  zap trash: [
    "~/Library/Application Support/Peanut Writer",
    "~/Library/Caches/com.dustinmichels.peanutwriter",
    "~/Library/WebKit/com.dustinmichels.peanutwriter",
  ]
end
