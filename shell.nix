{ system ? builtins.currentSystem }:
let
  src = 
    #fetchTarball "https://github.com/numtide/devshell/archive/master.tar.gz";
    ../devshell;
  devshell = import src { inherit system; };
in
devshell.fromTOML ./devshell.toml
