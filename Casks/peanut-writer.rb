cask "peanut-writer" do
  version "0.1.1"
  sha256 "2323a56dfff3f19973e379cf583c9cff547f28b42ce8b4d23c6a8e2bb5a4616d"

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
