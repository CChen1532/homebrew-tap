cask "wallpaperui" do
  version "0.2.36-preview.1"
  sha256 "6c751cff0b26f9245f62180d3043a2acfd9d8c0cd457137115d55f14302ed27a"

  url "https://github.com/CChen1532/wallpaper-library/releases/download/v#{version}/WallpaperUI-#{version}.zip"
  name "WallpaperUI"
  desc "Native macOS dynamic wallpaper library for videos and Wallpaper Engine scenes"
  homepage "https://github.com/CChen1532/wallpaper-library"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "WallpaperUI.app"

  caveats <<~EOS
    WallpaperUI is ad-hoc signed and not notarized, so macOS will block the first
    launch. Open it once via right-click → "Open", or clear the quarantine flag:

      xattr -dr com.apple.quarantine "#{appdir}/WallpaperUI.app"

    The video wallpaper backend (phonto / phonto-wall) is a separate third-party
    tool and is not bundled with this app.
  EOS
end
