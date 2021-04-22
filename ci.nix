rec {
  shell = import ./shell.nix {};
  build = shell.mkEffect {
    src = ./.;
    effectScript = ''
      set -x
      go build
      set +x
    '';
  };
}
