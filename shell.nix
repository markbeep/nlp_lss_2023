with import <nixpkgs> { };
with pkgs;
mkShell {
  nativeBuildInputs = [
    python39
    poetry
  ];
  shellHook = ''
    export LD_LIBRARY_PATH=${stdenv.cc.cc.lib}/lib/
  '';
}