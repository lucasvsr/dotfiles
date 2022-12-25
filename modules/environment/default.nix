{ config, pkgs, lib, ... }:

{

  programs.java = {

    enable = true; # configura o $JAVA_HOME para o maven
    package = pkgs.jdk17; # define a versão do java

  };

  home = {

    sessionVariables = {

      NPM_BIN_DIR = "${config.home.homeDirectory}/.local/npm/packages/bin"; # diretório dos binários pacotes do npm
      
    };

    sessionPath = [ "${config.home.sessionVariables.NPM_BIN_DIR}" ]; # configura o acesso aos pacotes do npm via cli

    packages = with pkgs; [

      maven
      nodejs-slim-14_x
      nodePackages.npm

    ];

    activation.finishing-dev-env = lib.hm.dag.entryAfter ["writeBoundary"] ''
    
        $DRY_RUN_CMD 

        echo "prefix=${config.home.homeDirectory}/.local/npm/packages" > ${config.home.homeDirectory}/.npmrc

    '';

  };

}
