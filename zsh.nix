{ config, pkgs, ... }:{
  programs.zsh = {
    enable = true;
    shellAliases = {
      search = "sudo nix-env -qaP";
      installed = "sudo nix-env --query --installed";
      update = "sudo nixos-rebuild switch --upgrade-all";
      delete-old-generations = "sudo nix-collect-garbage --delete-older-than";
      vim = "nvim";

    };
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    interactiveShellInit = ''
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
      export TERM=xterm-256color
      eval "$(direnv hook zsh)"
    '';
    ohMyZsh = {
      enable = true;
      plugins = [
        "git"
	"colored-man-pages"
	"command-not-found"
      ];
      theme = "refined";
    };
  };
}
