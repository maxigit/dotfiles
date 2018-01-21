#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
eval "$(fasd --init auto)"
alias c=zz
export EDITOR=vi
export VISUAL=vi
bindkey -v '^E' history-substring-search-up
bindkey -v '^N' history-substring-search-down
#bindkey -v '^O' autosuggest-accept
bindkey -v '^O' forward-word
bindkey -v '^P' autosuggest-clear

