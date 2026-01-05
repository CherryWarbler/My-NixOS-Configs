{ config, lib, pkgs, ... }:

{
  networking.hostName = "Cherry-NixOS-Workstation"; # Define your hostname.

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Denver";

  # Select internationalisation properties.
  i18n.defaultLocale = "es_SV.UTF-8";

  # Configure keymap in X11
   services.xserver.xkb.layout = "latam";

   services.printing.enable = true;

   services.pipewire = {
     enable = true;
     pulse.enable = true;
   };

   services.libinput.enable = true;

   programs.firefox.enable = true;

  # services.openssh.enable = true;
}
