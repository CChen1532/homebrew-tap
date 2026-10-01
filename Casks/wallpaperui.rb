cask "wallpaperui" do
  version "0.2.73-preview.1"
  sha256 "7de4a868242dcc47df6917e9a5859c88cc2a0f8b0cd6b44d0cda09b20e6feb92"

  url "https://github.com/CChen1532/wallpaper-library/releases/download/v#{version}/WallpaperUI-#{version}.zip"
  name "WallpaperUI"
  desc "Native macOS dynamic wallpaper library for videos and Wallpaper Engine scenes"
  homepage "https://github.com/CChen1532/wallpaper-library"

  livecheck do
    url :url
    strategy :github_releases
  end

  depends_on macos: :sequoia
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
