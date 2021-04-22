{ system ? builtins.currentSystem }:
let
  src = 
    fetchTarball "https://github.com/hercules-ci/devshell/archive/ef69e36493c201d7eebfcf84e51956f57319a2eb.tar.gz";
  devshell = import src { inherit system; };
in
devshell.fromTOML ./devshell.toml
