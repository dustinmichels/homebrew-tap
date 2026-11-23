cask "peanut-writer" do
  version "0.1.4"
  sha256 "44aefed243eae89421c8956ed7990aec038245b654d5750e1f74515c5a7963d7"

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
