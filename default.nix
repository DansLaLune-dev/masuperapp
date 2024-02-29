with import <nixpkgs> {};

let
  # masuperlib-src = fetchTarball "tar.gz";
  masuperlib-src = fetchTarball "https://github.com/DansLaLune-dev/masuperlib/archive/refs/tags/v0.1.tar.gz";

  masuperlib = callPackage masuperlib-src {};

in stdenv.mkDerivation {
    name = "masuperapp";
    src = ./.;
    nativeBuildInputs = [ cmake ];
    buildInputs = [ masuperlib ];
}

