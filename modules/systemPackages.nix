{ config, lib, pkgs, ... }:

{

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    wget
    lshw
    htop
    git
    zellij
    nixfmt
    tree
    alacritty
    fishPlugins.bobthefish
    gnomeExtensions.appindicator
    gnomeExtensions.openweather
    gnomeExtensions.dash-to-dock
    gnomeExtensions.clipboard-indicator
    gnomeExtensions.system-monitor-tray-indicator
    gnome.adwaita-icon-theme
    gnomeExtensions.hide-top-bar
    nerdfonts
    gcc
  ];

  fonts.packages = with pkgs; [
  (nerdfonts.override { fonts = [ "NerdFontsSymbolsOnly" ]; })
  ];

}

