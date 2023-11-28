pkgs: attrs:
  let defaultAttrs = {
    builder = "${pkgs.bash}/bin/bash";
    args = [ ./builder.sh ];
    setup = ./setup.sh;
    baseInputs = with pkgs; [ gnutar gzip gnumake clang coreutils gawk gnused gnugrep clang.bintools.bintools_bin ]; # will not work on other machines than Mac
    buildInputs = [];
    system = builtins.currentSystem;
  };
  in
  derivation (defaultAttrs // attrs )
