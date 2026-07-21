{ pkgs, ... }:

{
	programs.fish = {
		enable = true;

		shellAliases = {
			ls = "eza --icons";
			ll = "eza --icons -l";
			la = "eza --icons -la";
			lt = "eza --icons -T";
		};

		shellAbbrs = {
			hms = "home-manager switch --flake ~/my-config-nix#xonlinex";
			nrs = "sudo nixos-rebuild switch";
			c = "clear";
			p = "python";
			g = "git";
			gcl = "git clone";
			gst = "git status";
		};

		interactiveShellInit = ''
			set fish_greeting ""

			# Enable vim_mode
			set -g fish_key_bindings fish_vi_key_bindings
			fish_vi_key_bindings
			'';
	};
	programs.bat.enable = true;
	programs.eza = {
		enable = true;
		enableFishIntegration = true;
	};
}
