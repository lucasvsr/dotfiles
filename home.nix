{ config, pkgs, lib, ... }:

{

  targets.genericLinux.enable = true; # Sinaliza que o home-manager não está sendo rodado no NixOS
  nixpkgs.config.allowUnfree = true; # Permite instalar aplicações proprietárias
  
  imports = [
    ./modules
  ];

  home = {

    username = "lucasribeiro";
    homeDirectory = "/home/lucasribeiro";
    stateVersion = "22.05";

  };

  programs.home-manager.enable = true; # Let Home Manager install and manage itself.
  news.display = "silent"; # Parar de notificar sobre as novidades do home-manager

}
