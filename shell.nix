{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9f15d6c3a74d2778c6e1af67947c95f100dc6fd2.tar.gz") { } }:

pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = with pkgs; [
    nixpkgs-fmt
    rnix-lsp
    nodejs
    yarn
    yarn-bash-completion
  ];
}
