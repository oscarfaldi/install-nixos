{ config, pkgs, ... }:

{
  home.file.".config/niri".source =
    ../.config/niri;

  home.file.".config/waybar".source =
    ../.config/waybar;

  home.file.".config/fuzzel".source =
    ../.config/fuzzel;

  home.file.".config/ghostty".source =
    ../.config/ghostty;

  home.file.".config/mako".source =
    ../.config/mako;

  home.file.".config/starship.toml".source =
    ../.config/starship.toml;

  home.file.".config/aliasrc".source =
    ../.config/aliasrc;

  home.file.".config/zshrc".source =
    ../.config/zshrc;

  home.file.".config/bashrc".source =
    ../.config/bashrc;
}
