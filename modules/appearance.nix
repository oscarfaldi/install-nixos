{ config, pkgs, ... }:

{
  # ============================================================
  # Fonts Configuration
  # ============================================================

  fonts = {
    packages = with pkgs; [

      # ----------------------------------------------------------
      # Microsoft Standard Fonts (Windows Defaults)
      # ----------------------------------------------------------

      corefonts           # Arial, Times New Roman, Courier New, Verdana
      vistafonts          # Calibri, Cambria, Consolas, Segoe UI
      liberation_ttf      # Open-source exact metric fallbacks for MS Fonts

      # ----------------------------------------------------------
      # Nerd Fonts (Unstable Syntax Compatibility)
      # ----------------------------------------------------------

      nerdfonts           # Pulls from the updated unstable structure

      # ----------------------------------------------------------
      # Monospace
      # ----------------------------------------------------------

      jetbrains-mono
      ibm-plex

      # ----------------------------------------------------------
      # UI Fonts
      # ----------------------------------------------------------

      inter

      # ----------------------------------------------------------
      # Unicode Coverage
      # ----------------------------------------------------------

      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
      noto-fonts-color-emoji
    ];

    fontconfig = {
      enable = true;

      defaultFonts = {
        monospace = [
          "IosevkaTermSlab Nerd Font"
          "JetBrains Mono"
          "BlexMono Nerd Font"
          "Consolas"
          "Liberation Mono"
        ];

        sansSerif = [
          "Inter"
          "Arial"
          "Calibri"
          "IBM Plex Sans"
          "Liberation Sans"
          "Noto Sans"
        ];

        serif = [
          "Times New Roman"
          "Cambria"
          "IBM Plex Serif"
          "Liberation Serif"
          "Noto Serif"
        ];

        emoji = [
          "Noto Color Emoji"
        ];
      };
    };
  };

  # ============================================================
  # Visual Environment Packages (Themes & Icons)
  # ============================================================

  environment.systemPackages = with pkgs; [

    # ----------------------------------------------------------
    # GTK Themes
    # ----------------------------------------------------------

    glib
    graphite-gtk-theme
    nordic
    gruvbox-gtk-theme

    # ----------------------------------------------------------
    # Icon Themes
    # ----------------------------------------------------------

    papirus-icon-theme
    papirus-folders
    gruvbox-plus-icons

    # ----------------------------------------------------------
    # Cursor Themes
    # ----------------------------------------------------------

    bibata-cursors
  ];
}
