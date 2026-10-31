# iamgadmarconi/homebrew-tap

Homebrew casks.

## Infinify

```sh
brew install --cask iamgadmarconi/tap/infinify
```

An infinite canvas as your macOS desktop: pan and zoom, and your windows live on it. Ported from
[DriftWM](https://github.com/malbiruk/driftwm). Apple Silicon, macOS 26 or later. Source and releases:
[iamgadmarconi/infinify](https://github.com/iamgadmarconi/infinify) (GPL-3.0-or-later).

- Update: `brew upgrade --cask infinify` (the app also tells you when a new version is out).
- Remove: `brew uninstall --zap --cask infinify` turns off its login item and launch daemon, puts your window settings
  back and removes its settings. `brew uninstall` without `--zap` only removes the app.
