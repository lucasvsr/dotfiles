{ config, pkgs, lib, ... }:

{

  nix = {

      package = pkgs.nix;
      settings.auto-optimise-store = true;
      extraOptions = ''
          experimental-features = nix-command flakes
      '';
  };

}
