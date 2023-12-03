{
  packageOverrides = pkgs: {
    graphvitz = pkgs.graphvitz.override { withoutXorg = true; };
  };
}
