{}:
let
  inherit (import ./. {}) copilot-c99 hp np;
in
hp.shellFor {
  packages = p: [ copilot-c99 ];
  nativeBuildInputs = (with np; [ cabal-install ghcid niv ]) ++ (with hp; [ haskell-language-server ]);
}
