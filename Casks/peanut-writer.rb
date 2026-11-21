cask "peanut-writer" do
  version "0.1.2"
  sha256 "40296f4472d5658a2edb2b1b2cb72c66434835e3fbcc1fb18459a3c1c7e7c86b"

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
