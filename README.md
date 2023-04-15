Only tested on Debian 11

## Requirements
#### update your packages:
```
apt update && apt upgrade
```

#### install required packages:
```
apt install unzip libxml2-utils sudo
```

## How to Install and start

Only works in root for now, sorry.

- Clone this repository
- Download grandMA3 v1.9.2.2 console software (https://www.malighting.com/downloads/products/grandma3/)
- Start `sudo ./installScript.sh`
- You can start gma3 with `gma3_1.9.2` command

## Fix missing libs or wrong version

The simple solution is to upgrade to debian sid.

gma3_1.9.2 need gcc >= 11 and glibc >= 2.34

## Add GNOME Launcher icon

- Start `sudo ./add_debian_application.sh`

## After

You can delete repository folder

## Thanks

Thanks to johnsudaar and audiofanzine forum:
https://fr.audiofanzine.com/controleur-d-eclairage-informati/ma-lighting/grandma-onpc/forums/t.706000,grandma3-il-est-possible-de-le-faire-tourner-sur-linux.html
