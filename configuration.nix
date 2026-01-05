{ config, lib, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./core/core.nix
      ./core/systemapps.nix
      ./core/users.nix
      ./core/desktop/gnome.nix
      ./core/tweaks.nix
      ./sysuserapps/apps.nix
    ];

  # Usar systemd-boot como el cargador de arranque EFI.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

 # Permitir la instalacion de apps con licencias no libres
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.11";

}

