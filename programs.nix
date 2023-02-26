{ config, pkgs, ... }: {
  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs = {
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
    dconf.enable = true;
    mtr.enable = true;
    neovim = {
      enable = true;
      defaultEditor = true;
    };
  };
}
