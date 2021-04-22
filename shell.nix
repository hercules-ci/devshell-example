{ system ? builtins.currentSystem }:
let
  src = 
    fetchTarball "https://github.com/hercules-ci/devshell/archive/b77379d11978d2d21fe73745f327481370d61f75.tar.gz";
  nixpkgs =
    fetchTarball "https://github.com/NixOS/nixpkgs/archive/0a5f5bab0e08e968ef25cff393312aa51a3512cf.tar.gz";
  pkgs =
    import nixpkgs { inherit system; config = {}; };
  devshell = import src { inherit system pkgs; };
in
devshell.fromTOML ./devshell.toml
