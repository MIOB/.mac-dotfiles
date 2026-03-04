# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Overview

macOS dotfiles repository. Manages configurations for various tools with a symlink-based install script.

## Structure

- `install.sh` — Main installer; symlinks config files to their XDG/home locations.
- `zsh/configs/` — Zsh configuration files (sourced/symlinked by install).
- `zsh/external/` — Third-party zsh plugins or scripts.
- `zsh-abbr/` — Zsh abbreviation definitions (for zsh-abbr plugin).
- `nvim/` — Neovim configuration.

## Key conventions

- `install.sh` must be idempotent.
- Prefer to use XDG base directories (e.g., `XDG_CONFIG_HOME`, `XDG_DATA_HOME`, `XDG_STATE_HOME`).
- `DOTFILES` variable points to this repo's root (defaults to `~/.mac-dotfiles`)
- Shell scripts should be checked with `shellcheck`.

## Commands

```bash
# Run the installer
bash install.sh

# Lint shell scripts
shellcheck install.sh
```
