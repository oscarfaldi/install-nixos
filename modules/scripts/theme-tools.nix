{ config, pkgs, ... }:

let

  mkScript = name:
    pkgs.writeShellScriptBin name
      (builtins.readFile ../../modules/scripts/theme/${name});

in
{

  # ============================================================
  # Environment Scripts (Themes & Wallpaper)
  # ============================================================

  environment.systemPackages = [
    (mkScript "theme-toggle")
    (mkScript "wallpaper")
    (mkScript "wallpaperd")
    (mkScript "generate-theme")
    (mkScript "theme-graphite")
    (mkScript "theme-vintage")
    (mkScript "theme-jade")
  ];
}
