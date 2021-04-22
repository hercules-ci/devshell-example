{ system ? builtins.currentSystem }:
let
  src = 
    fetchTarball "https://github.com/hercules-ci/devshell/archive/345e2d56212ad4b87dc53d67fcb917232b8d1611.tar.gz";
  devshell = import src { inherit system; };
in
devshell.fromTOML ./devshell.toml
