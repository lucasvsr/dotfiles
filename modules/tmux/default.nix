{ config, pkgs, lib, ... }:

let 

  bindConfigs = builtins.readFile ./tmux.conf;

in {

  programs.tmux = {

    enable = true;
    terminal = "tmux-256color";
    extraConfig = bindConfigs;
    plugins = with pkgs.tmuxPlugins; [

      resurrect
      sensible
      {
        plugin = continuum;
        extraConfig = ''
          set -g @continuum-restore 'on'
          set -g @continuum-save-interval '60' # minutes
        '';
      }
      {
        plugin = gruvbox;
        extraConfig = ''
        
          set -g @tmux-gruvbox 'dark'
        
        '';
      }

    ];

  };

}