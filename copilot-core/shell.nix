{}:
let
  inherit (import ./. {}) copilot-core hp np;
in
hp.shellFor {
  packages = p: [ copilot-core ];
  nativeBuildInputs = (with np; [ cabal-install ghcid niv stylish-haskell ]) ++ (with hp; [ haskell-language-server ]);
}
