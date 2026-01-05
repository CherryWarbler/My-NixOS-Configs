{ config, lib, pkgs, ... }:

{
    # Define a user account. Don't forget to set a password with ‘passwd’.
   users.users.cherry = {
     isNormalUser = true;
     extraGroups = [ "wheel" "input" "networkmanager" ]; # Enable ‘sudo’ for the user.
     packages = with pkgs; [
       tree
     ];
   };
}

