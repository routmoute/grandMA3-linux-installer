mkdir /usr/share/gma3
cp gma3.ico /usr/share/gma3/gma3.ico

echo "[Desktop Entry]
Type=Application
Terminal=true
Name=GrandMA3
Icon=/usr/share/gma3/gma3.ico
Exec=/usr/bin/gma3
" > /usr/share/applications/gma3.desktop
