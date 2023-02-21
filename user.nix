{ config, pkgs, ... }: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.grim_reaper = {
    isNormalUser = true;
    description = "Grim Reaper";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

  # Default User Shell
  users.defaultUserShell = pkgs.zsh;
}
