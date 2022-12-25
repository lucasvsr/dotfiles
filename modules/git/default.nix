{ config, pkgs, lib, ... }:

let 

  user = ''Lucas Ribeiro'';
  email = ''lucasvsribeiro@outlook.com'';
  
in
{

  programs.git = {
    enable = true;
    userName = user;
    userEmail = email;
    ignores = [
      ".uuid" # Para caso eu coloque as fontes
      "node_modules" # Nunca adicionar os node_modules do projetos node
    ];
    extraConfig = {

      init = {

        defaultBranch = "main";

      };

      merge = {

        conflictStyle = "diff3";
        
      };

      pull = {

        rebase = "true";

      };
      
    };
  };

}