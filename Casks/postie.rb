cask "postie" do
  version "1.3"
  sha256 "ee74a288766bdcdd64e57b467eeb98e1e82b4e18f954a4398a7a463a210b6cee"

  url "https://github.com/ObscureMeerkat/Postie/releases/download/v#{version}/Postie-#{version}.zip"
  name "Postie"
  desc "Native macOS wrapper for Facebook Messenger"
  homepage "https://github.com/ObscureMeerkat/Postie"

  depends_on macos: :tahoe

  app "Postie.app"

  zap trash: [
    "~/Library/Containers/Barrett.Projects.Postie",
  ]

  caveats <<~EOS
    Postie is not notarized. If macOS blocks the first launch, right-click
    Postie.app in /Applications and choose Open, or clear the quarantine flag:

      xattr -dr com.apple.quarantine /Applications/Postie.app
  EOS
end
