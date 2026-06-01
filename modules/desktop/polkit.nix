{ pkgs, ... }:

{
  # Enable PolicyKit system-wide.
  # Required for privilege escalation dialogs
  # such as mounting drives, editing system settings,
  # managing networking, and other admin actions.
  security.polkit.enable = true;

  # Install the MATE authentication agent.
  # This provides graphical password prompts
  # when applications request elevated privileges.
  environment.systemPackages = [
    pkgs.mate-polkit
  ];

  # Start the authentication agent automatically
  # when the user session begins.
  systemd.user.services.polkit-agent = {
    description = "MATE PolicyKit Authentication Agent";

    # Start with the graphical user session.
    wantedBy = [ "default.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      # Keep the agent running continuously.
      Type = "simple";

      # Launch the MATE PolicyKit agent.
      ExecStart =
        "${pkgs.mate-polkit}/libexec/polkit-mate-authentication-agent-1";

      # Automatically restart if the agent crashes.
      Restart = "on-failure";

      # Wait briefly before restarting.
      RestartSec = 1;
    };
  };
}
