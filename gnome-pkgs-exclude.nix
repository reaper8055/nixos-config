{ config, pkgs, ... }: {
  # Exclude gnome packages
  environment.gnome.excludePackages = with pkgs; [
    gnome-tour
    gnome.geary
  ];
}
