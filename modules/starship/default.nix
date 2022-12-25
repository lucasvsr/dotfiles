{ config, pkgs, lib, ... }:

{
  home = {

    sessionVariables = {

      STARSHIP_CONFIG = "${config.home.sessionVariables.XDG_CONFIG_DIR}/starship/conf.toml";

    };
    
    file."${config.home.sessionVariables.STARSHIP_CONFIG}".source = config.lib.file.mkOutOfStoreSymlink ./conf.toml;
    
  };

  programs.starship.enable = true;

}
