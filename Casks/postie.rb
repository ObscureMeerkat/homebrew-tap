cask "postie" do
  version "1.1"
  sha256 "f39047c6193a74a9c905834ee5f8047f26978f584f519a1f8708a301745afea3"

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
    Postie is not notarized. If macOS blocks the first launch, either
    right-click Postie.app and choose Open, or install with:

      brew install --cask --no-quarantine ObscureMeerkat/tap/postie
  EOS
end
