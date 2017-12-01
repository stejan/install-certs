#!/bin/bash
# The certificates have to be in the same directory like this install script

# Space searated cert files to install (without extension)
CERTS=( cert1.crt cert2.crt )

PASSWORD=changeit
KEYSTORE=$JAVA_HOME/jre/lib/security/cacerts
CERT_FOLDER="./"

for i in "${CERTS[@]}" 
do
	# keytool -noprompt -delete -alias "$i" -keystore $KEYSTORE -storepass $PASSWORD
	keytool -noprompt -import -file "$CERT_FOLDER$i.crt" -alias "$i" -keystore $KEYSTORE -storepass $PASSWORD
done
