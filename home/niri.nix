{ ... }:

{
  # Deploy Niri configuration

  home.file.".config/niri".source =
    ../dotfiles/niri;
}
