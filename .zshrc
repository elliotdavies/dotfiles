## Prevent tmux loading /etc/profile twice
# if [ -f /etc/profile ]; then
#     PATH=""
#     source /etc/profile
# fi

# oh-my-zsh config
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

## Set terminal title to current directory
DISABLE_AUTO_TITLE="true"

function precmd () {
  window_title="\033]0;${PWD##*/}\007"
  echo -ne "$window_title"
}

# Run `ls` on `cd`
chpwd() {
  ls
}

## OMZ plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Dotfiles setup
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Set prompt
# export PS1="%d \$(git_prompt_info) %n $ ";

export EDITOR='vim'

# Shortcuts and commands
alias cdc="cd ~/Code";
alias cdm='cd "$MONOREPO"';

alias o="open";

alias gc="git commit";
alias gcam="git commit -am";
alias gch="git checkout";
alias gd="git diff";
alias gps="git push";
alias gpsf="git push --force-with-lease";
alias gpl="git pull";
alias gs="git status";

alias gcl='git remote prune origin && git branch -r | awk "{print \$1}" | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk "{print \$1}" | xargs git branch -d'
alias gpsu='git push -u origin $(git symbolic-ref HEAD -q --short)'

# Language support

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH=~/.yarn/bin:$PATH
export PATH=~/.local/bin:$PATH
export PATH="$HOME/.cargo/bin:$PATH"

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi

# Put openssl and libssl on the path
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# Hook to direnv
eval "$(direnv hook zsh)"

# fzf command completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
