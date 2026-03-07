# Homebrew Tap for Infoblox Open Source

This repository contains [Homebrew](https://brew.sh) formulae and casks for Infoblox open-source tools.

Casks are **auto-generated** by [GoReleaser](https://goreleaser.com) on each release — do not edit them manually.

## Install APX (macOS)

```bash
brew install --cask infobloxopen/tap/apx
```

> **Note:** APX was previously distributed as a Homebrew Formula. It is now a Cask
> (which includes shell completions and automatic quarantine bypass). If you
> installed the old formula, uninstall it first:
>
> ```bash
> brew uninstall apx
> brew install --cask infobloxopen/tap/apx
> ```

## Upgrade

```bash
brew upgrade --cask apx
```

## Uninstall

```bash
brew uninstall --cask apx
```

## Available Casks

| Cask  | Description |
|-------|-------------|
| `apx` | API Publishing eXperience CLI |

## About

This tap is maintained by [Infoblox](https://github.com/infobloxopen). For issues with specific tools, please file them in the respective source repository:

- **apx**: [infobloxopen/apx](https://github.com/infobloxopen/apx/issues)
