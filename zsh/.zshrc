fpath=("/opt/homebrew/share/zsh/site-functions" "${ZDOTDIR}/external" $fpath)

source "${XDG_CONFIG_HOME}/zsh/aliases.zsh"

function () {
  local file
  for file in "${XDG_CONFIG_HOME}/zsh/configs/"*.zsh; do
    source "${file}"
  done
}

#######################
# SYNTAX HIGHLIGHTING #
#######################
function () {
  local script='/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh'
  if [[ -f "${script}" ]]; then
    source "${script}"
  fi
}

###################
# AUTOSUGGESTIONS #
###################
function() {
  local script="/opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
  if [[ -f "${script}" ]]; then
    source "${script}"
  fi
}

########
# ABBR #
########
function() {
  local script='/opt/homebrew/share/zsh-abbr/zsh-abbr.zsh'
  if [[ -f "${script}" ]]; then
    source "${script}"
  fi
}

#############
# DIR STACK #
#############
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt PUSHD_SILENT

##################
# COMMAND EDITOR #
##################
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

#######
# FZF #
#######
if [[ $(command -v "fzf") ]]; then
    source <(fzf --zsh)
fi

##########
# ZOXIDE #
##########
if [[ $(command -v "zoxide") ]]; then
  eval "$(zoxide init zsh)"
fi

##########
# iterm2 #
##########
test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"
