# latest commit to nixpkgs-unstable as of 2022-08-09
{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9f15d6c3a74d2778c6e1af67947c95f100dc6fd.tar.gz") { } }:

pkgs.mkShell {
  nativeBuildInputs = [
    # For nix
    pkgs.nixpkgs-fmt
    pkgs.rnix-lsp

    # For building
    pkgs.nodejs-18_x
    pkgs.yarn
    pkgs.yarn-bash-completion

    # For running
    pkgs.docker-client
    pkgs.docker-compose
  ];
}
