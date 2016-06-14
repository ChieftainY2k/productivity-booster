#!/bin/bash


HOSTSFILE=/etc/hosts #linux
#HOSTSFILE=/cygdrive/c/Windows/System32/drivers/etc/hosts #windows CYGWIN

TMPFILE=/tmp/hosts.tmp #temp file

if [ -z "$1" ]
then
    echo "Usage: $0 on|off"
    exit 0
fi

#backup
cp $HOSTSFILE /tmp/hosts.bak

if [ "$1" == "on" ] ; then

    #turn it on

    sed 's/#prodboost \(.*\)/\1 #prodboost/g' $HOSTSFILE > $TMPFILE
    mv $TMPFILE $HOSTSFILE

    echo "Productivity booster turned on.";

else

    if [ "$1" == "off" ] ; then

        #turn it off

        sed 's/\(.*\) #prodboost/#prodboost \1/g' $HOSTSFILE > $TMPFILE
        mv $TMPFILE $HOSTSFILE

        echo "Productivity booster turned off.";

    fi
fi

#remove temp file
rm -f TMPFILE