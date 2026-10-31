# iamgadmarconi/homebrew-tap

Homebrew casks and formulae.

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

## tuna

```sh
brew install iamgadmarconi/tap/tuna
```

A multi-agent coding harness for the terminal: a daemon that runs every agent loop, a full-screen
TUI, and runtimes on your machine, in Namespace orbs or on tailnet hosts. macOS and Linux, arm64 and
x86_64. Apache-2.0. Binaries are attached to this repository's `tuna-v*` releases.

- Update: `brew upgrade tuna`.
- Remove: `brew uninstall tuna`. Your conversations and settings in `~/.tuna` stay.
