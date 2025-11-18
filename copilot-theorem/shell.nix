{}:
let
  inherit (import ./. {}) copilot-theorem hp np;
in
hp.shellFor {
  packages = p: [ copilot-theorem ];
  nativeBuildInputs = (with np; [ cabal-install ghcid niv z3 ]) ++ (with hp; [ haskell-language-server ]);
}
