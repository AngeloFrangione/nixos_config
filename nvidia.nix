{ config, pkgs, lib, ... }:

{
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
