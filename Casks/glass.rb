cask "glass" do
  version "0.2.4"
  sha256 "875d4a04353fc80dc610ba5a5c765ab73e47fef6b802345a4fcb848f53ef74f9"

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
