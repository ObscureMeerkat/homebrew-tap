cask "postie" do
  version "1.2"
  sha256 "6dc8d45621b32dfee8007aae2c24cbc674514f491cef9716188292479c3c5c22"

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
