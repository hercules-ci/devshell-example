{ system ? builtins.currentSystem }:
let
  src = 
    fetchTarball "https://github.com/hercules-ci/devshell/archive/6ad3532e6596ea52b071cd44745f81308d076d24.tar.gz";
  devshell = import src { inherit system; };
in
devshell.fromTOML ./devshell.toml
