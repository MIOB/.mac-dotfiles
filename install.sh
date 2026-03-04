#!/usr/bin/env bash

set -euo pipefail

readonly DOTFILES="${DOTFILES:-${HOME}/.mac-dotfiles}"
readonly XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
readonly XDG_DATA_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}"
readonly XDG_CACHE_HOME="${XDG_CACHE_HOME:-${HOME}/.cache}"
readonly XDG_STATE_HOME="${XDG_STATE_HOME:-${HOME}/.local/state}"

#######
# zsh #
#######
mkdir -p "${XDG_CONFIG_HOME}/zsh" "${XDG_STATE_HOME}/zsh" "${XDG_CACHE_HOME}/zsh"
ln -sf "${DOTFILES}/zsh/.zshenv" "${HOME}"
ln -sf "${DOTFILES}/zsh/.zshrc" "${XDG_CONFIG_HOME}/zsh/.zshrc"
ln -sf "${DOTFILES}/zsh/aliases.zsh" "${XDG_CONFIG_HOME}/zsh"
rm -rf "${XDG_CONFIG_HOME}/zsh/configs"
ln -sf "${DOTFILES}/zsh/configs" "${XDG_CONFIG_HOME}/zsh"
rm -rf "${XDG_CONFIG_HOME}/zsh/completions"
mkdir "${XDG_CONFIG_HOME}/zsh/completions"

############
# zsh-abbr #
############
rm -rf "${XDG_CONFIG_HOME}/zsh-abbr"
ln -sf "${DOTFILES}/zsh-abbr" "${XDG_CONFIG_HOME}"

########
# nvim #
########
mkdir -p "${XDG_CONFIG_HOME}/nvim"
mkdir -p "${XDG_DATA_HOME}/nvim/undo"
ln -sf "${DOTFILES}/nvim/init.vim" "${XDG_CONFIG_HOME}/nvim"

if [[ ! -f "${XDG_CONFIG_HOME}/nvim/autoload/plug.vim" ]]; then
  curl --fail --location --silent --show-error --create-dirs \
    --output "${XDG_CONFIG_HOME}/nvim/autoload/plug.vim" \
    "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
fi
nvim --noplugin +PlugUpdate +qa