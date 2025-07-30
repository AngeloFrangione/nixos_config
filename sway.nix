{ config, pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; [
    waybar
    rofi
    rofi-calc
    wev
    swaylock-effects
    swayidle
    waylogout
    brillo
    sway-contrib.grimshot
    grim # screenshot functionality
    slurp # screenshot functionality
    wl-clipboard # wl-copy and wl-paste for copy/paste from stdin / stdout
    swaynotificationcenter # notification system developed by swaywm maintainer
    libnotify
    wl-gammarelay-rs
  ];

  # Enable the gnome-keyring secrets vault.
  # Will be exposed through DBus to programs willing to store secrets.
  services.gnome.gnome-keyring.enable = true;

  # enable Sway window manager
  programs.sway = {
    enable = true;
    wrapperFeatures.gtk = true;
    extraOptions = [
      "--unsupported-gpu"
    ];
  };
}
