# ~/.bashrc
# vim:set ft=sh sw=2 sts=2:

source "$HOME/.hashrc"

alias l='ls -l'
#alias rm='rm -i'
set -o vi

# Store 10,000 history entries
export HISTSIZE=10000
# Don't store duplicates
export HISTCONTROL=erasedups
# Append to history file
shopt -s histappend

VISUAL=vim
EDITOR="$VISUAL"
LESS="FRX"
RI="--format ansi -T"
PSQL_EDITOR='vim -c"setf sql"'
CLICOLOR=1
LSCOLORS=gxgxcxdxbxegedabagacad

export VISUAL EDITOR LESS RI PSQL_EDITOR CLICOLOR LSCOLORS

bind 'set bind-tty-special-chars off'
bind '"\ep": history-search-backward'
bind '"\en": history-search-forward'
bind '"\C-w": backward-kill-word'
bind 'set completion-ignore-case on'

export HISTIGNORE="%*"
bind '"\C-q": "%-\n"'

[ -z "$PS1" ] || stty -ixon

[ -z "$PS1" ] || export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]\$(git_prompt_info '(%s)')$ "

if [ -f '/usr/local/etc/bash_completion.d/git-completion.bash' ]; then
  source '/usr/local/etc/bash_completion.d/git-completion.bash'
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[ ! -f "$HOME/.bashrc.local" ] || . "$HOME/.bashrc.local"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Virtual Enviroment Wrapper exports
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Sites
source /usr/local/share/python/virtualenvwrapper.sh
