{ config, pkgs, ... }: {
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
     wget
     git
     zsh
     google-chrome
     neovim
     gnome.gnome-tweaks
     vscode
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
     clang-tools
     rust-analyzer
     sumneko-lua-language-server
     fzf
     ripgrep
     tree-sitter
     clangStdenv
     clangMultiStdenv
     ventoy-bin
  ];
}
