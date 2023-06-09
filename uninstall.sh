#!/bin/sh
. ./version

echo "Delete GrandMa3 v$VERSION ? (y/n)"
read yesorno

if [ ! -z "$yesorno" ]
then
    if [ $yesorno = "y" ]
    then
        rm -r /root/MALightingTechnology/gma3_$VERSION
        rm /usr/bin/gma3_$VERSION
        rm /usr/share/applications/gma3_$VERSION.desktop
        echo "GrandMA3 v$VERSION Deleted"
    fi
fi

echo "Delete All GrandMA3 versions and saves ? (y/n)"
read yesorno

if [ ! -z "$yesorno" ]
then
    if [ $yesorno = "y" ]
    then
        rm -r /root/MALightingTechnology
        rm /usr/bin/gma3*
        rm /usr/share/applications/gma3*
        echo "MALightingTechnology folder Deleted"
    fi
fi
