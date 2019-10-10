with import (fetchTarball {
  # Taken from https://github.com/nixos/nixpkgs-channels
  url =  https://releases.nixos.org/nixpkgs/19.09-darwin/nixpkgs-darwin-19.09pre193404.9bbad4c6254/nixexprs.tar.xz;
  sha256 = "1hjbn17s33w7zkmd69n26zgjk671rw41frgf6bzfvp1qaq5y74zl";
}) {};

stdenv.mkDerivation {
  name = "elm-bp";
  buildInputs = [
    gnumake
    nodejs
    elmPackages.elm
    elmPackages.elm-format
    entr
  ];
}
