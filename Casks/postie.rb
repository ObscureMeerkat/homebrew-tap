cask "postie" do
  version "1.6"
  sha256 "c59e1a76332e42541a442f4cbf3a0f08031b857ece722ec4787e2f340abfe4a8"

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
