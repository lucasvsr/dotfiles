{ config, pkgs, lib, ... }:

{

  home.activation.setup-gnomekeybinds = lib.hm.dag.entryAfter ["writeBoundary"] ''
  
    $DRY_RUN_CMD 
    dconf load /org/gnome/desktop/wm/keybindings/ < ${config.home.sessionVariables.DOTFILES}/modules/gnome/keybinds/default.conf &&
    dconf load /org/gnome/desktop/input-sources/ < ${config.home.sessionVariables.DOTFILES}/modules/gnome/keybinds/inputs.conf
    dconf load /org/gnome/settings-daemon/plugins/media-keys/ < ${config.home.sessionVariables.DOTFILES}/modules/gnome/keybinds/personal.conf &&
    dconf load /org/gnome/shell/keybindings/ < ${config.home.sessionVariables.DOTFILES}/modules/gnome/keybinds/shell.conf
  
  '';

}
