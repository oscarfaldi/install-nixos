{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
  };

  programs.starship = {
    enable = true;
  };

  home.file.".zshrc".text = ''
    source ~/.config/zshrc
  '';

  home.file.".bashrc".text = ''
    source ~/.config/bashrc
  '';
}
