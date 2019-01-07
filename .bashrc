## Dotfiles setup
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

## History

# Don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
shopt -s histappend

# For setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

## Terminal

# Check the window size after each command and, if necessary, update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


## Set prompt

export PS1="\w \u$ ";


## Custom commands 

cdl() {
  cd "$@"
  ls
}
alias cd="cdl";


gcl() {
  git remote prune origin
  git branch -r | awk '{print $1}' | egrep -v -f /dev/fd/0 <(git branch -vv | grep origin) | awk '{print $1}' | xargs git branch -d
}


## Shortcuts

alias cdc="cd ~/Code";

alias o="open";

alias gc="git commit";
alias gcam="git commit -am";
alias gch="git checkout";
alias gd="git diff";
alias gps="git push";
alias gpl="git pull";
alias gs="git status";

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'


### To be run in habito/engine
alias stack-build-tmux="stack build --fast && ./dev-scripts/tmux/run-backend";
alias stack-watch="stack test --fast --exec './dev-scripts/hlint.hs -m' --exec './dev-scripts/weeder.hs' --file-watch";


## Language support

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=~/.yarn/bin:$PATH
export PATH=~/.local/bin:$PATH


## Other

export EDITOR=vim

if [ -e /Users/elliot/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/elliot/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Put openssl and libssl on the path
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig

# Bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
