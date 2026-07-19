cask "kepko-sample" do
  version "1.7.2"
  sha256 "280666dc42cb9dd52a6c9a8c7f9f585776941b400e76e601dd114aab81c66385"

  url "https://github.com/yasanglass/kepko/releases/download/#{version}/kepko-sample-macos-#{version}.dmg"
  name "Kepko"
  desc "Explore the Kepko design system for Compose Multiplatform"
  homepage "https://github.com/yasanglass/kepko"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on arch: :arm64

  app "Kepko.app"

  caveats <<~EOS
    Kepko is currently ad-hoc signed and has not been notarized by Apple.
    macOS may require approval under System Settings -> Privacy & Security
    before the first launch.
  EOS
end
