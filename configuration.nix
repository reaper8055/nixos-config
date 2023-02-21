# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./bootloader.nix
      ./fonts.nix
      ./zsh.nix
      ./gdm.nix
      ./desktop.nix
      ./firewall-options.nix
      ./hostinfo.nix
      ./nix-pkgs.nix
      ./services.nix
      ./user.nix
      ./locale.nix
      ./programs.nix
      ./system-packages.nix
      ./nix-settings.nix
      ./gnome-pkgs.nix
    ];
}
