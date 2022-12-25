{ config, pkgs, lib, ... }:

{

  home.file.".config/backintime/config".source = config.lib.file.mkOutOfStoreSymlink ./config;

}
