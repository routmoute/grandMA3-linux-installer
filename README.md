Only tested on Debian 12 & Arch Linux

## Requirements

#### Check hardware requirements: https://help2.malighting.com/Page/grandMA3/onpc_system_requirements/en/

#### Update your packages:
##### Arch Linux
```
yay -Syu
```
*Alternatively, using pacman:*

```
sudo pacman -Syu
```
##### Debian 12
```
apt update && apt upgrade
```

#### Install required packages:
##### Arch Linux
```
yay -S unzip libxml2
```
*Alternatively, using pacman:*

```
sudo pacman -S unzip libxml2
```
##### Debian 12
```
apt install unzip libxml2-utils sudo
```

## How to Install and start

Only works in root for now, sorry.

- Clone this repository
- Download grandMA3 v2.2.5.2 console software (https://www.malighting.com/downloads/products/grandma3/)
- Start `sudo ./installScript.sh`
- You can start gma3 with `gma3_2.2.5` command

## Add GNOME Launcher icon

- Start `sudo ./add_debian_application.sh`

## After

You can delete repository folder

## Fix libprocps.so.8 (web_daemon not working)

### Download libprocps8 debian package
```
wget http://ftp.de.debian.org/debian/pool/main/p/procps/libprocps8_3.3.17-5_amd64.deb
```

### install it
```
dpkg -i libprocps8_3.3.17-5_amd64.deb
```

## Thanks

Thanks to johnsudaar and audiofanzine forum:
https://fr.audiofanzine.com/controleur-d-eclairage-informati/ma-lighting/grandma-onpc/forums/t.706000,grandma3-il-est-possible-de-le-faire-tourner-sur-linux.html
