cask "varstotas" do
  version "0.2.0"
  sha256 "146a32ff2234fd49fe1c934c447f097321af2bb5633def6ebeda4446583aaf66"

  url "https://github.com/dirondin/varstotas/releases/download/release-#{version}/Varstotas-#{version}-macos-universal.dmg"
  name "Varstotas"
  desc "3D modelling for makers: furniture, workshop projects and 3D prints"
  homepage "https://github.com/dirondin/varstotas"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  depends_on :macos

  app "Varstotas.app"

  zap trash: [
    "~/Library/Application Support/Varstotas",
    "~/Library/Saved Application State/dev.varstotas.app.savedState",
  ]

  caveats <<~EOS
    Varstotas is not notarized by Apple, so macOS blocks its first launch.
    Open it once, then System Settings → Privacy & Security → Open Anyway
    (macOS 14 and earlier: right-click Varstotas in Applications → Open → Open), or run:
      xattr -dr com.apple.quarantine /Applications/Varstotas.app
  EOS
end
