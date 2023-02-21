{ config, pkgs, ... }:{
  programs.zsh = {
    enable = true;
    shellAliases = {
      search = "sudo nix-env -qaP";
      installed = "sudo nix-env --query --installed";
      update = "sudo nixos-rebuild switch --upgrade";
      vim = "nvim";
    };
    syntaxHighlighting.enable = true;
    autosuggestions.enable = true;
    interactiveShellInit = ''
      source ${pkgs.zsh-vi-mode}/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
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
