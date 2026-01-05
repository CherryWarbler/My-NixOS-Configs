{ config, pkgs, ... }:

{
   environment.systemPackages = with pkgs; [
     discord
     cava
     git
   ];

}
