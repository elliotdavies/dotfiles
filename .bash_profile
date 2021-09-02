if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi
if [ -e /home/elliot/.nix-profile/etc/profile.d/nix.sh ]; then . /home/elliot/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
