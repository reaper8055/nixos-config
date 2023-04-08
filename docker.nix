{pkgs, config, ...}: {
  environment.systemPackages = with pkgs; [
    docker-compose
  ];
  virtualisation.docker.enable = true;
  users.extraGroups.docker.members = [ "grim_reaper" ];
}
