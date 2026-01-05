{ config, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     vim
     wget
     fastfetch
     gnome-tweaks
     gnome-text-editor
     papirus-icon-theme
     nautilus
     ghostty
   ];

}
