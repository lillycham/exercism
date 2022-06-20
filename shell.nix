let
  pkgs = import <nixpkgs> { };
  stdenv = pkgs.llvmPackages_13.stdenv;
in

pkgs.stdenv.mkDerivation
{
  name = "elm-pos";
  version = "0.1.0";
  
  buildInputs = with pkgs; [
    cabal-install
    exercism
    ghc
    llvmPackages_13.clang
    sqlite
    zlib
  ];

  meta = {
    description = "PoS (point of sale) frontend in elm";
    license = "BSD";
  };
}