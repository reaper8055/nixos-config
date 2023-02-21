{ config, pkgs, ... }: {
  fonts.fonts = with pkgs; [
    (nerdfonts.override {
      fonts = [ "FiraCode" "Hack" ];
    })
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    fira-code
    fira-code-symbols
  ];
}
