{
  sha256,
  pkgs ? import <nixpkgs> {},
}:
pkgs.callPackage (import ./.) {
  buildGoModule = pkgs.buildGo118Module;
  vendorHash = sha256;
}
// {
  outputHash = sha256;
}
