{ pkgs, ... }:

{
  programs.fzf = {
    enable = true;
    enableFishIntegration = true;
    
    defaultOptions = [
      "--height=40%"
      "--layout=reverse"
      "--border"
      "--info=inline"
      "--prompt='❯ '"
      "--pointer='▶'"
      "--marker='✓'"
      "--separator='─'"
      "--scrollbar='│'"
      "--color=bg:-1"
      "--color=bg+:#3e3c38"
      "--color=border:#5c5855"
      "--color=fg:#d8d0c0"
      "--color=fg+:#d8d0c0"
      "--color=gutter:#1c1b19"
      "--color=header:#7890a0"
      "--color=hl:#c8b468"
      "--color=hl+:#e08060"
      "--color=info:#5c5855"
      "--color=marker:#8a9868"
      "--color=pointer:#e08060"
      "--color=prompt:#b07878"
      "--color=query:#d8d0c0"
      "--color=scrollbar:#5c5855"
      "--color=separator:#5c5855"
      "--color=spinner:#80a090"
    ];
  };
}
