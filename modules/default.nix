{ config, pkgs, lib, ... }:

{

  # Pacotes que não precisam de configuração
  home = {

      sessionVariables = {

        XDG_CONFIG_DIR = "${config.home.homeDirectory}/.config";
        DOTFILES = "${config.home.sessionVariables.XDG_CONFIG_DIR}/dotfiles";
        XDG_HOME_BIN = "${config.home.homeDirectory}/.local/bin";
        SCRIPTS = "${config.home.sessionVariables.DOTFILES}/scripts";

      };

      sessionPath = [ "${config.home.sessionVariables.XDG_HOME_BIN}" ];
    
      packages = with pkgs; [

        exa
        htop
        direnv
        fzf
        neofetch
        silver-searcher
        gum
        unrar
        lazydocker
        shellcheck
        spacevim

      ];

      file = {

        ".local/share/fonts".source = config.lib.file.mkOutOfStoreSymlink ./fonts;
        "${config.home.sessionVariables.XDG_HOME_BIN}".source = config.lib.file.mkOutOfStoreSymlink ./bin;

      };

  };

  # Pacotes que precisam de configuração
  imports = [

    ./bat
    ./environment
    ./fish
    ./git
    ./nix
    ./starship
    ./tmux

  ];


}
