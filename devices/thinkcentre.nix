{ config, pkgs, ... }:

{
  networking.hostName = "thinkcentre";
  
  services.flatpak.enable = true;

  users.users.angelo = {
    isNormalUser = true;
    description = "Angelo";
    extraGroups = [ "networkmanager" "wheel" ];
    shell = pkgs.zsh;
    packages = with pkgs; [
      zed-editor
      kdePackages.kate
      alacritty
      telegram-desktop
      darktable
      fira-code-symbols
      appimage-run
      gimp3-with-plugins
      onlyoffice-desktopeditors
      obsidian
      home-manager
      pavucontrol
    ];
  };

}
