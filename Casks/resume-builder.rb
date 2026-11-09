cask "resume-builder" do
  version "0.1.1"
  sha256 "ef1c664aa3f35de7dd453e1a81f759edb1fe6bc18173f4395478f5df03baa9e5"

  url "https://github.com/dustinmichels/resume-builder/releases/download/v#{version}/Resume-Builder.dmg"
  name "Resume Builder"
  desc "Local resume editor with live PDF preview and machine-readability checks"
  homepage "https://github.com/dustinmichels/resume-builder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on formula: "poppler"
  depends_on macos: :ventura

  app "Resume Builder.app"

  uninstall quit: "com.dustinmichels.resumebuilder"

  zap trash: [
    "~/Library/Application Support/resume-builder",
    "~/Library/Caches/com.dustinmichels.resumebuilder",
    "~/Library/Caches/resume-builder",
    "~/Library/Logs/Resume Builder",
    "~/Library/WebKit/com.dustinmichels.resumebuilder",
  ]
end
