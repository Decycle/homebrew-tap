cask "glass" do
  version "0.2.0"
  sha256 "0f8bb643ec77261d0bf6373b9d0e471fe1d97f38201f810f0c1983c156486f47"

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
