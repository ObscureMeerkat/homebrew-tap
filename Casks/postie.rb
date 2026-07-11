cask "postie" do
  version "1.5"
  sha256 "e09ac13d2d6b3c5a19d81e148b45becd6a1ea49ca2f29f00329f9e936934cd6c"

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
