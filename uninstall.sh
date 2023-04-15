#!/bin/sh
set -e
. ./version

echo "Delete GrandMa3 v$VERSION ? (y/n)"
read yesorno

if [ ! -z "$yesorno" ]
then
    if [ $yesorno = "y" ]
    then
        rm -r /root/MALightingTechnology/gma3_$VERSION
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
        echo "MALightingTechnology folder Deleted"
    fi
fi
