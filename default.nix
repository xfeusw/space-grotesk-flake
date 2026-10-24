{
  pkgs,
  lib,
  stdenvNoCC,
}:

stdenvNoCC.mkDerivation {
  pname = "space-grotesk";
  version = "1.0.0";

  src = ./space-grotesk.ttf;

  dontUnpack = true;

  installPhase = ''
    runHook preInstall
    install -Dm644 *.ttf -t $out/share/fonts/truetype
    # for .otf
    # install -Dm644 *.otf -t $out/share/fonts/opentype
    runHook postInstall
  '';

  meta = {
    description = "Space Grotesk";
    platforms = lib.platforms.all;
  };
}
