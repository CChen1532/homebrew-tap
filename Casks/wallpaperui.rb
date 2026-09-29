cask "wallpaperui" do
  version "0.2.69-preview.1"
  sha256 "35dfb3e819ad2e8051bdbd7675e018504cd6dd7146211b80f739b9c8898a90b3"

  url "https://github.com/CChen1532/wallpaper-library/releases/download/v#{version}/WallpaperUI-#{version}.zip"
  name "WallpaperUI"
  desc "Native macOS dynamic wallpaper library for videos and Wallpaper Engine scenes"
  homepage "https://github.com/CChen1532/wallpaper-library"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma
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
