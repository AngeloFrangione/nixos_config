{ config, pkgs, lib, ... }:

{
  hardware.graphics = {
    enable = true;
  };

  services.xserver.videoDrivers = ["nvidia"];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    open = true;
    nvidiaSettings = true;
  };

  systemd.services.nvidiaLockClocks = {
      description = "Set NVIDIA GPU clocks and mode";
      after = [ "multi-user.target" ];
      wantedBy = [ "multi-user.target" ];
      serviceConfig = {
        Type = "oneshot";
        ExecStart = "/run/current-system/sw/bin/nvidia-smi --lock-gpu-clocks=0,1605 --mode=1";
        User = "root"; # Needs to run as root
      };
 };

}
