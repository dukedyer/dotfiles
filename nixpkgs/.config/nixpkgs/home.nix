{ config, pkgs, ... }:




{
   nixpkgs.config.allowUnfree = true;

    home.packages = [
    pkgs.htop
    pkgs.git
    pkgs.bspwm
    pkgs.sxhkd
    pkgs.featherpad
    pkgs.pcmanfm
    pkgs.neovim
    pkgs.gh
    pkgs.stow
    pkgs.chromium
    pkgs.cmake
    pkgs.gh
  ];






  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "duke";
  home.homeDirectory = "/home/duke";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";
}
