cask "postie" do
  version "1.4"
  sha256 "f4e5efcdc77c1a6c94e35da19a12d1f31140d4c02e1d25e3c2401341a7f537ed"

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
