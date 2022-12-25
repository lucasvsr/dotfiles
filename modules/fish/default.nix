{ config, pkgs, lib, ... }:

let 

  conf = builtins.readFile ./conf/init;

in

{

  home = {
    
    file = {

      ".config/fish/aliases.fish".source = config.lib.file.mkOutOfStoreSymlink ./conf/aliases;
      ".config/fish/env.fish".source = config.lib.file.mkOutOfStoreSymlink ./conf/env;
      ".config/fish/binds.fish".source = config.lib.file.mkOutOfStoreSymlink ./conf/binds;
      ".config/fish/functions".source = config.lib.file.mkOutOfStoreSymlink ./functions;
      
    };

  };

  programs.fish = {
    
    enable = true;
    shellInit = conf;
    plugins = [

      {
        name = "z";
        src = pkgs.fetchFromGitHub {
          owner = "jethrokuan";
          repo = "z";
          rev = "85f863f20f24faf675827fb00f3a4e15c7838d76";
          sha256 = "sha256-+FUBM7CodtZrYKqU542fQD+ZDGrd2438trKM0tIESs0="; # lib.fakeSha256;
        };
      }

      {
        name = "foreign-env";
        src = pkgs.fetchFromGitHub {
          owner = "oh-my-fish";
          repo = "plugin-foreign-env";
          rev = "b3dd471bcc885b597c3922e4de836e06415e52dd";
          sha256 = "sha256-3h03WQrBZmTXZLkQh1oVyhv6zlyYsSDS7HTHr+7WjY8=";
        };
      }

      {
        name = "git";
        src = pkgs.fetchFromGitHub {
          owner = "jhillyerd";
          repo = "plugin-git";
          rev = "cc5999fa296c18105fb62f1637deec1d12454129";
          sha256 = "sha256-NaDZLmktuwlYxxzwDoVKgd8bEY+Wy9b2Qaz0CTf8V/Q=";
        };
      }

      {
        name = "nix";
        src = pkgs.fetchFromGitHub {
          owner = "kidonng";
          repo = "nix-completions.fish";
          rev = "cd8a43bed96e0acc02228bc77502be8ba5fa0548";
          sha256 = "sha256-spnLmde41qQt8uJZFwiH0igFuVqZ6SvkwdA9Kbe2yz8=";
        };
      }
      
    ];

  };
    
}