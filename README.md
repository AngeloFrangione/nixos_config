# My nixos config
You'll need a hardware-configuration.nix and also create the configuration.nix file containing the includes.

```
{ config, pkgs, ... }:
{
  imports =
    [
      ./hardware-configuration.nix
      ./qb-root-ca.nix
      ./sway.nix
      ./nvidia.nix
      ./steam.nix
      devices/thinkcentre.nix
    ];
}
```
