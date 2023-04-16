#!/bin/bash
PATH=/root/naveen/snmpd.conf
COPYPATH=/root/naveen/snmpd.conf
DATE=$(/usr/bin/date +"%F")
SED=/usr/bin/sed
COPY=/usr/bin/cp
####Copying the PATH.

echo "Copying..."
$COPY -p $PATH $PATH-$DATE
echo "Copied"
####Commenting the dlmod
echo "Commenting"
$SED -i 's/^dlmod/#&/' $PATH
echo "Commneting. Done"
####Restarting the service
echo "Restating the service..."
#svcadm restart svc:/application/management/sma:default
echo "Done"
