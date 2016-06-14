#!/bin/bash


HOSTSFILE=./hosts

if [ -z "$1" ]
then
    echo "Usage: $0 on|off"
    exit 0
fi

#backup
cp $HOSTSFILE $HOSTSFILE.bak

if [ "$1" == "on" ] ; then

    #turn it on
    sed 's/\(.*\) #prodboost/#prodboost \1/g' $HOSTSFILE > $HOSTSFILE.tmp
    mv $HOSTSFILE.tmp $HOSTSFILE

else

    if [ "$1" == "off" ] ; then

        #turn it off
        sed 's/#prodboost \(.*\)/\1 #prodboost/g' $HOSTSFILE > $HOSTSFILE.tmp
        mv $HOSTSFILE.tmp $HOSTSFILE

    fi
fi

