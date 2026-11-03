cask "glass" do
  version "0.0.5"
  sha256 "d0a6d156d695457914a3a5d34ce27de1532197d09e8465c47d327e2fbed0771b"

  url "https://downloads.glasseditor.app/GlassRecorder-#{version}.dmg"
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

  app "GlassRecorder.app"

  zap trash: [
    "~/Library/Application Support/com.decycle.glassrecorder",
    "~/Library/Caches/com.decycle.glassrecorder",
    "~/Library/HTTPStorages/com.decycle.glassrecorder",
    "~/Library/Preferences/com.decycle.glassrecorder.plist",
  ]
end
