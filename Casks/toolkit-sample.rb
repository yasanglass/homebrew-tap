cask "toolkit-sample" do
  version "1.7.19"
  sha256 "dfa6b6430a4a4357148914c2cbd5f2bc50d7f071c3092110c3d1d869ecdfedbc"

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
