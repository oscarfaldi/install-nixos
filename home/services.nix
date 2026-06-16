{ config, pkgs, ... }:

{
  systemd.user.services.wallust-theme = {
    Unit = {
      Description = "Generate Wallust Theme";
    };

    Service = {
      Type = "oneshot";
      ExecStart = "/run/current-system/sw/bin/wallpaperd";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };

  systemd.user.services.waybar = {
    Unit = {
      Description = "Waybar";
      After = [ "wallust-theme.service" ];
      Requires = [ "wallust-theme.service" ];
    };

    Service = {
      ExecStart = "/run/current-system/sw/bin/waybar";
      Restart = "on-failure";
    };

    Install = {
      WantedBy = [ "default.target" ];
    };
  };
}
