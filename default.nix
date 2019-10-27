with import ./nix/packages.nix;

stdenv.mkDerivation {
  name = "elm-bp";
  buildInputs = [
    gnumake
    nodejs
    elmPackages.elm
    elmPackages.elm-format
    elmPackages.elm-test
  ];
  src = ./.;
  preBuild = "make clean";

  # Set HOME to make the elm compiler happy
  buildPhase = ''
    export HOME=$TMP
    make ENVIRONMENT=production OUT="dist"
  '';

  installPhase = "cp -r dist $out";
}
