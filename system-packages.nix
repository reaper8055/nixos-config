{ config, pkgs, ... }: 
let
  unstablePkgs = import <nixpkgs-unstable> { inherit (pkgs) system config; };
in {
  environment.systemPackages = with pkgs; [
    wget
    git
    zsh
    google-chrome
    gcc
    neovim
    gnome.gnome-tweaks
    oh-my-zsh
    direnv
    brave
    btop
    kitty
    gobject-introspection
    wireplumber
    microcodeAmd
    flow
    rnix-lsp
    nixpkgs-fmt
    tlp
    acpi
    poppler_utils
    fzf
    ripgrep
    bat
    ventoy-bin
    tmux
    gnome-console
    wl-clipboard
    stylua
    appimage-run
    fuse3
    # unstable-pkgs
    unstablePkgs.vscode
    unstablePkgs.jetbrains-toolbox
  ];
}

