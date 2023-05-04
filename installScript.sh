#!/bin/sh
set -e
. ./version

unzip -o grandMA3_stick_v${FULLVERSION}.zip -d grandMA3_stick_v${FULLVERSION}

cd grandMA3_stick_v${FULLVERSION}/ma/

### Unzip MA files in /root/MALightingTechnology directory ###
xmllint -xpath '//GMA3/ReleaseFile/MAPacket[not(contains(@Type, "sys")) and not(contains(@Type, "arm")) and not(contains(@Type, "gma2"))]/@Destination' release_stick_v${FULLVERSION}.xml | sed "s/ Destination=/mkdir -p /" | sed "s/home\/ma/root/" | sh
xmllint -xpath '//GMA3/ReleaseFile/MAPacket[not(contains(@Type, "sys")) and not(contains(@Type, "arm")) and not(contains(@Type, "gma2"))]/@*[name()="Name" or name()="Destination"]' release_stick_v${FULLVERSION}.xml | sed "s/ Destination=/ -d /" | tr -d "\n" | sed "s/ Name=/\nunzip -o /g" | sed "s/home\/ma/root/" | sh

### Add gma3_version exec ###
echo "#!/bin/sh
sudo LD_LIBRARY_PATH=/root/MALightingTechnology/gma3_$VERSION/shared/third_party /root/MALightingTechnology/gma3_$VERSION/console/bin/app_gma3 HOSTTYPE=onPC" > /usr/bin/gma3_${VERSION}
chmod +x /usr/bin/gma3_${VERSION}
