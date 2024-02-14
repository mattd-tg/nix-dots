{ pkgs, ... }:

{
  # add home-manager user settings here
  home.packages = with pkgs; [ 
    sl
    rectangle
    jetbrains.rider
    raycast
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" "DroidSansMono" ]; })
   ];

  programs.git = {
    enable = true;
    userEmail = "mattdemichele@gmail.com";
    userName = "mrrobot";
  };

  programs.lazygit.enable = true;
  
  programs.gh = {
    enable = true;
  };

  programs.btop = {
    enable = true;
  };

  programs.eza = {
    enable = true;
    enableAliases = true;
    git = true;
    icons = true;
  };  

  programs.k9s = {
    enable = true;
  };

  programs.ripgrep = {
    enable = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.neovim = {
    enable = true;
  };

  home.file."./.config/nvim/" = {
    source = ./nvim;
    recursive = true;
  };
 
  programs.zsh = {
    enable = true;
    enableAutosuggestions = true;
    enableCompletion = true;
    oh-my-zsh = {
      enable = true;
    };
  };

  programs.tmux = {
    enable = true;
    baseIndex = 1;
    disableConfirmationPrompt = true;
    historyLimit = 50000;
    keyMode = "vi";
    mouse = true;
    newSession = true;
    shell = "\${pkgs.zsh}/bin/zsh";
    # terminal = "screen";
  };
  
  programs.kitty = {
    enable = true;
    font = {
      name = "FiraCode";
      size = 18;
    };
    theme = "Broadcast";
    settings = {
      scrollback_lines = 10000;
      enable_audio_bell = false;
      update_check_interval = 0;
      disable_ligatures = "never";
      confirm_os_window_close = "0";
    };
    shellIntegration.enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
  };

  programs.zoxide = { 
    enable = true;
  };  
         
  programs.direnv = {  
    enable = true;  
    nix-direnv = {
      enable = true;
    };
  };

  home.stateVersion = "23.11";
}
