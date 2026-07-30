{ pkgs, ... }:

{
  programs.atuin = {
    enable = true;
    enableFishIntegration = true;
    flags = [ "--disable-up-arrow" ]; # Opcional: mantiene la flecha arriba nativa de fish/vi si lo prefieres
    # Configuración avanzada de Atuin (equivalente al archivo config.toml)
    settings = {
      style = "full";
      
      # Puedes agregar más configuraciones aquí si lo necesitas en el futuro, por ejemplo:
      # search_mode = "fuzzy";
      # inline_height = 20;
    };
  };
}
