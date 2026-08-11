cask "toolkit-sample" do
  version "1.7.20"
  sha256 "05d5544b1b208878728aa4e8a319415549c3bbcbf6cc4a60fdb3a7d42a3e1c35"

  url "https://github.com/yasanglass/toolkit/releases/download/#{version}/toolkit-sample-macos-#{version}.dmg"
  name "Toolkit"
  desc "Explore the Toolkit libraries for Kotlin Multiplatform"
  homepage "https://github.com/yasanglass/toolkit"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on arch: :arm64

  app "Toolkit.app"

  caveats <<~EOS
    Toolkit is currently ad-hoc signed and has not been notarized by Apple.
    macOS may require approval under System Settings -> Privacy & Security
    before the first launch.
  EOS
end
