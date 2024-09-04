# You can use this file to set up all the dependencies
# for this project. Run `nix-shell`.
{ pkgs ? import <nixpkgs> { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    stack
    z3
    
  ];
  NIX_PATH = "nixpkgs=" + pkgs.path;
  shellHook = ''
  '';
}
