{ pkgs, ... }:

let
  mkScript = name:
    pkgs.writeShellScriptBin name
      (builtins.readFile ../../scripts/${name});

in
{
  environment.systemPackages = [
    (mkScript "changes")
    (mkScript "clean")
    (mkScript "rebuild")
    (mkScript "rebuild-boot")
    (mkScript "screenshot")
    (mkScript "system-state")
    (mkScript "theme-toggle")
    (mkScript "theme-graphite")
    (mkScript "theme-vintage")
    (mkScript "upgrade")
    (mkScript "version")
    (mkScript "wallpaper")
    (mkScript "wallpaperd")
  ];
}
