{ pkgs, ... }:

let
  mkScript = name:
    pkgs.writeShellScriptBin name
      (builtins.readFile ../../assets/scripts/${name});

in
{
  environment.systemPackages = [
    (mkScript "theme-toggle")
    (mkScript "theme-graphite")
    (mkScript "theme-vintage")
    (mkScript "wallpaper")
    (mkScript "wallpaperd")
  ];
}
