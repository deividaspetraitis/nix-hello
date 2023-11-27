pkgs: attrs:
  let defaultAttrs = {
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./builder.sh ];
    baseInputs = with pkgs; [ gnutar gzip gnumake clang coreutils gawk gnused gnugrep binutils.bintools ];
    buildInputs = [];
    system = builtins.currentSystem;
  };
  in
  derivation (defaultAttrs // attrs )
#pkgs: name:
#  let
#    res = with pkgs; [ "${pkgs.${name}}" ];
#  in
#   res
#let
#  negate = x: !x;
#  sum = x: y: x + y;
#  pkgs = <nixpkgs>;
#in
#  builtins.toString "qq"

# pkgs:
#pkgs: attrs:
#  let defaultAttrs = {
#
#  };
#  defaultAttrs
  # in
  # derivation (defaultAttrs // attrs )
