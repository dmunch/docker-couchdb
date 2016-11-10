#!/bin/bash
if [ ! -z $CLOUSEAU_NAME ]; then
	printf "[dreyfus]\n" > /opt/couchdb/etc/local.d/dreyfus.ini
	printf "name = $CLOUSEAU_NAME\n" >> /opt/couchdb/etc/local.d/dreyfus.ini
fi

if [ ! -z $ERL_COOKIE ]; then
	echo "-setcookie $ERL_COOKIE" >> /opt/couchdb/etc/vm.args
fi
if [ ! -z $ERL_NAME ]; then
	echo "-name $ERL_NAME" >> /opt/couchdb/etc/vm.args
fi
