{ pkgs, ... }:

{
  # Enable the core polkit service system-wide.
  # Required for authentication dialogs when apps need elevated privileges.
  security.polkit.enable = true;

  # Install the lightweight MATE polkit authentication agent.
  # This provides GUI password prompts for Wayland compositors like Niri.
  environment.systemPackages = [
    pkgs.mate.mate-polkit
  ];

  # Start the polkit authentication agent automatically
  # when the user session begins.
  systemd.user.services.polkit-mate-authentication-agent-1 = {
    description = "MATE Polkit Authentication Agent";

    # Start this service automatically in the default user session.
    # More reliable for minimal Wayland compositors like Niri.
    wantedBy = [ "default.target" ];

    serviceConfig = {
      # Keep the service running continuously.
      Type = "simple";

      # Launch the MATE polkit authentication agent.
      ExecStart =
        "${pkgs.mate.mate-polkit}/libexec/polkit-mate-authentication-agent-1";

      # Restart automatically if the agent crashes.
      Restart = "on-failure";

      # Wait 1 second before restarting.
      RestartSec = 1;
    };
  };
}
