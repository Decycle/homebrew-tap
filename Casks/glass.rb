cask "glass" do
  version "0.1.1"
  sha256 "8d428b690d98727fc0d4adb6b5f3a03933fdb80301f1cd06c980a97d01ec36e6"

  url "https://downloads.glasseditor.app/Glass-#{version}.dmg"
  name "Glass"
  desc "Screen recorder that edits your demo while you talk"
  homepage "https://glasseditor.app/"

  livecheck do
    url "https://glasseditor.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Glass.app"

  zap trash: [
    "~/Library/Application Support/com.decycle.glassrecorder",
    "~/Library/Caches/com.decycle.glassrecorder",
    "~/Library/HTTPStorages/com.decycle.glassrecorder",
    "~/Library/Preferences/com.decycle.glassrecorder.plist",
  ]
end
