{ config, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also instal>
     wget
     fastfetch
     gnome-tweaks
     gnome-text-editor
     papirus-icon-theme
     nautilus
     ghostty
   ];

}
