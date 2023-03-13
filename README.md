## Requirements
- update your packages:
```
apt-get update && apt-get upgrade
```

- install required packages:
```
apt install unzip libxml2-utils
```

- optional package (nmcli):
```
apt install network-manager
systemctl start NetworkManager.service 
systemctl enable NetworkManager.service
```

## How to Install and start

Only works in root for now, sorry.

- Clone this repository
- Download grandMA3 v1.8.8.2 console software (https://www.malighting.com/downloads/products/grandma3/)
- Start `sudo ./installScript.sh`
- You can start gma3 with `sudo /root/gma3`

Thanks to johnsudaar and audiofanzine forum:
https://fr.audiofanzine.com/controleur-d-eclairage-informati/ma-lighting/grandma-onpc/forums/t.706000,grandma3-il-est-possible-de-le-faire-tourner-sur-linux.html
