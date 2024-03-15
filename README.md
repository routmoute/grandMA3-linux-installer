Only tested on Debian 12

## Requirements

#### Check hardware requirements: https://help2.malighting.com/Page/grandMA3/onpc_system_requirements/en/

#### Update your packages:
```
apt update && apt upgrade
```

#### Install required packages:
```
apt install unzip libxml2-utils sudo
```

## How to Install and start

Only works in root for now, sorry.

- Clone this repository
- Download grandMA3 v2.0.0.4 console software (https://www.malighting.com/downloads/products/grandma3/)
- Start `sudo ./installScript.sh`
- You can start gma3 with `gma3_2.0.0` command

## Add GNOME Launcher icon

- Start `sudo ./add_debian_application.sh`

## After

You can delete repository folder

## Thanks

Thanks to johnsudaar and audiofanzine forum:
https://fr.audiofanzine.com/controleur-d-eclairage-informati/ma-lighting/grandma-onpc/forums/t.706000,grandma3-il-est-possible-de-le-faire-tourner-sur-linux.html
