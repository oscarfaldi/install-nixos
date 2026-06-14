{ config, pkgs, ... }:

{
  home.file.".config/niri".source = ../.config/niri;
  home.file.".config/waybar".source = ../.config/waybar;
  home.file.".config/fuzzel".source = ../.config/fuzzel;
  home.file.".config/mako".source = ../.config/mako;
  home.file.".config/ghostty".source = ../.config/ghostty;
  home.file.".config/fastfetch".source = ../.config/fastfetch;
  home.file.".config/mpv".source = ../.config/mpv;
  home.file.".config/yazi".source = ../.config/yazi;
  home.file.".config/qimgv".source = ../.config/qimgv;
  home.file.".config/swayidle".source = ../.config/swayidle;
  home.file.".config/swaylock".source = ../.config/swaylock;
  home.file.".config/wlogout".source = ../.config/wlogout;
  home.file.".config/xarchiver".source = ../.config/xarchiver;

  home.file.".config/starship.toml".source =
    ../.config/starship.toml;

  home.file.".config/aliasrc".source =
    ../.config/aliasrc;

  home.file.".config/bashrc".source =
    ../.config/bashrc;

  home.file.".config/zshrc".source =
    ../.config/zshrc;
}
