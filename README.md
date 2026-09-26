# homebrew-tap

Homebrew tap for [WallpaperUI](https://github.com/CChen1532/wallpaper-library) — a native macOS dynamic wallpaper library for videos and Wallpaper Engine scenes.

## Install

```sh
brew install --cask CChen1532/tap/wallpaperui
```

Or tap first and then install:

```sh
brew tap CChen1532/tap
brew install --cask wallpaperui
```

## Requirements

- macOS 14 (Sonoma) or later
- Apple silicon (arm64)

## Notes

- The app is ad-hoc signed and **not notarized**; macOS blocks the first launch. Open it once with right-click → *Open*, or install with `--no-quarantine`:
  ```sh
  brew install --cask --no-quarantine CChen1532/tap/wallpaperui
  ```
- The video wallpaper backend (`phonto` / `phonto-wall`) is a separate third-party tool and is not bundled.
- Uninstall with `brew uninstall --cask wallpaperui`.
