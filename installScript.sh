#!/bin/sh
set -e
VERSION=1.8.8
FULLVERSION=1.8.8.2

unzip grandMA3_stick_v${FULLVERSION}.zip -d grandMA3_stick_v${FULLVERSION}

cd grandMA3_stick_v${FULLVERSION}/ma/

xmllint -xpath '//GMA3/ReleaseFile/MAPacket[not(contains(@Type, "sys")) and not(contains(@Type, "arm")) and not(contains(@Type, "gma2"))]/@Destination' release_stick_v${FULLVERSION}.xml | sed "s/ Destination=/mkdir -p /" | sed "s/home\/ma/root/" | sh
xmllint -xpath '//GMA3/ReleaseFile/MAPacket[not(contains(@Type, "sys")) and not(contains(@Type, "arm")) and not(contains(@Type, "gma2"))]/@*[name()="Name" or name()="Destination"]' release_stick_v${FULLVERSION}.xml | sed "s/ Destination=/ -d /" | tr -d "\n" | sed "s/ Name=/\nunzip -o /g" | sed "s/home\/ma/root/" | sh

chmod +x /root/MALightingTechnology/gma3_${VERSION}/shared/resource/software/connections.sh

echo "#!/bin/sh
sudo /root/MALightingTechnology/gma3_${VERSION}/console/bin/app_gma3 HOSTTYPE=onPC" > /usr/bin/gma3
chmod +x /usr/bin/gma3

### Add libraries ###
cd ../../libs

# fix web_daemon missing library
cp libprocps.so.7 /root/MALightingTechnology/gma3_${VERSION}/console/bin/web_daemon/.
