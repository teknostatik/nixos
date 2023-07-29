# This module defines a small NixOS installation CD.  It does not
# contain any graphical stuff.
{ config, pkgs, ... }:

{
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-calamares-gnome.nix>

    # Provide an initial copy of the NixOS channel so that the user
    # doesn't need to run "nix-channel --update" first.
    <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
  ];
  
    # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  
  environment.systemPackages = with pkgs; [
  git
  featherpad
  pandoc
  dropbox
  vscode
  dmenu
  feh
  i3lock
  kitty
  i3blocks
  arandr 
  scrot 
  xautolock 
  barrier
  imagemagick
  neofetch
  zathura
  pcmanfm
  htop
  blueman
  cowsay
  fortune
  shellcheck
  abiword
  rhythmbox
  brasero
  sound-juicer
  transmission
  byobu
  tmux
  screen
  qmk
  networkmanagerapplet
  protonvpn-gui
  protonvpn-cli
  protonmail-bridge
  ];
  
}


