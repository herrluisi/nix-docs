{
  description = "My NixOS docs with Quartz";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
      in {
        devShells.default = pkgs.mkShell {
          packages = with pkgs; [
            nodejs_22
            angular-language-server  # needed because my nixvim env gives an error that it can't start this lsp... Idk...
          ];
          shellHook = ''
            echo "Quartz dev env ready – node $(node --version)"
          '';
        };
      });
}
