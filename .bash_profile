## Dotfiles setup
alias config="/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME";


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
alias a="atom";

alias gc="git commit";
alias gcam="git commit -am";
alias gch="git checkout";
alias gd="git diff";
alias gps="git push";
alias gpl="git pull";
alias gs="git status";

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

[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
if [ -e /Users/elliot/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/elliot/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# Put openssl and libssl on the path
export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
