# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }: {
  imports = [ 
      ./hardware-configuration.nix
      ./bootloader.nix
      ./fonts.nix
      ./zsh.nix
      ./gdm.nix
      ./desktop.nix
      ./firewall-options.nix
      ./hostinfo.nix
      ./nixpkgs-config.nix
      ./services.nix
      ./user.nix
      ./locale.nix
      ./programs.nix
      ./system-packages.nix
      ./docker.nix
      ./nix-system-settings.nix
      ./nix-gc-config.nix
      ./gnome-pkgs-exclude.nix
    ];
}
