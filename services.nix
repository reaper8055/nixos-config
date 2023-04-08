{ config, pkgs, ... }: {
  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;
  services.dbus.enable = true;
  services.flatpak.enable = true;
  services.gnome.gnome-browser-connector.enable = true;
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  services.lorri.enable = true;
}
