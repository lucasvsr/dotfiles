{ config, pkgs, lib, ... }:

{
  programs.bat = {

    enable = true;
    config.theme = "gruvbox-dark";

  };
}