{ system ? builtins.currentSystem
, pins ? import ./npins
, pkgs ? import pins.nixpkgs { inherit system; }
}:

pkgs.mkShell {
  buildInputs = with pkgs; [
    SDL.dev
    alsa-lib
    dbus
    gtk2
    gtksourceview3
    gdb
    libao
    libpulseaudio
    openal
    pkg-config
    qt5.qtbase
    qt5.qttools
    udev
    wrapGAppsHook
    xorg.libXv
  ];
}
