cask "glass" do
  version "0.0.4"
  sha256 "66ed67cc9cd5b6cee5036387a35a16c82ff91096ec0756814284871782db57a7"

  url "https://downloads.glasseditor.app/GlassRecorder-#{version}.dmg"
  name "Glass"
  desc "Screen recorder that edits your demo while you talk"
  homepage "https://glasseditor.app/"

  livecheck do
    url "https://glasseditor.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "GlassRecorder.app"

  zap trash: [
    "~/Library/Application Support/com.decycle.glassrecorder",
    "~/Library/Caches/com.decycle.glassrecorder",
    "~/Library/HTTPStorages/com.decycle.glassrecorder",
    "~/Library/Preferences/com.decycle.glassrecorder.plist",
  ]
end
