cask "postie" do
  version "1.0"
  sha256 "673f2ed97ba1935c4cc0fa0f0fcd84b1a5af1bc3116cc4efcb21cb24d42190af"

  url "https://github.com/ObscureMeerkat/Postie/releases/download/v#{version}/Postie-#{version}.zip"
  name "Postie"
  desc "Native macOS wrapper for Facebook Messenger"
  homepage "https://github.com/ObscureMeerkat/Postie"

  depends_on macos: :tahoe

  app "Postie.app"

  zap trash: [
    "~/Library/Containers/Barrett.Projects.Messenger",
  ]

  caveats <<~EOS
    Postie is not notarized. If macOS blocks the first launch, either
    right-click Postie.app and choose Open, or install with:

      brew install --cask --no-quarantine ObscureMeerkat/tap/postie
  EOS
end
