#!/bin/sh
set -e
. ./version

if [ ! -f /usr/share/gma3/gma3.ico ]
    mkdir /usr/share/gma3
    cp gma3.ico /usr/share/gma3/gma3.ico
fi

echo "[Desktop Entry]
Type=Application
Terminal=true
Name=GrandMA3_${VERSION}
Icon=/usr/share/gma3/gma3.ico
Exec=/usr/bin/gma3_${VERSION}
" > /usr/share/applications/gma3_${VERSION}.desktop
