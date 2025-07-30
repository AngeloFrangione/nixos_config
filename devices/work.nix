{ config, pkgs, ... }:

{
    networking.hostName = "afrangione-laptop";

    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.afrangione = {
      isNormalUser = true;
      description = "Angelo";
      extraGroups = [ "networkmanager" "wheel" "video" "wireshark" "docker" ];
      shell = pkgs.zsh;
      packages = with pkgs; [
        zed-editor
        element-desktop
        thunderbird
        mattermost-desktop
        bruno
        obsidian
        home-manager
        pavucontrol
      ];
    };
}
