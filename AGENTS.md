# AGENTS.md

This file provides guidance to Codex when working with code in this repository.

## Overview

macOS dotfiles repository. Manages configurations for various tools with a symlink-based install script.

## Structure

- `install.sh` - Main installer; symlinks config files to their XDG/home locations.
- `codex/` - User-level Codex instructions installed into `~/.codex`.
- `claude/` - User-level Claude Code configuration retained during migration.
- `zsh/configs/` - Zsh configuration files sourced or symlinked by install.
- `zsh/external/` - Third-party zsh plugins or scripts.
- `zsh-abbr/` - Zsh abbreviation definitions for the zsh-abbr plugin.
- `nvim/` - Neovim configuration.

## Key Conventions

- `install.sh` must be idempotent.
- Prefer XDG base directories such as `XDG_CONFIG_HOME`, `XDG_DATA_HOME`, and `XDG_STATE_HOME`.
- `DOTFILES` points to this repo root and defaults to `~/.mac-dotfiles`.
- Shell scripts should be checked with `shellcheck`.

## Commands

```bash
# Run the installer
bash install.sh

# Lint shell scripts
shellcheck install.sh
```
