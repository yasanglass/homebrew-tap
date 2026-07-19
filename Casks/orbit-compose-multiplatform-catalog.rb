cask "orbit-compose-multiplatform-catalog" do
  version "0.40.3"
  sha256 "2b6d80585eddaf51757c4a2d75286da4083232145eed3e484d4c1a3c884d3658"

  url "https://github.com/yasanglass/orbit-compose-multiplatform/releases/download/#{version}/orbit-catalog-macos-#{version}.dmg"
  name "Orbit Compose Multiplatform Catalog"
  desc "Browse Orbit components for Compose Multiplatform"
  homepage "https://github.com/yasanglass/orbit-compose-multiplatform"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos
  depends_on arch: :arm64

  app "Orbit Catalog.app"

  caveats <<~EOS
    Orbit Compose Multiplatform Catalog is currently ad-hoc signed and has not
    been notarized by Apple. macOS may require approval under System Settings ->
    Privacy & Security before the first launch.
  EOS
end
