#!/bin/bash

echo "Starting container : SonarQube 5.1"


# change the password
if [ ! -f /.init_password ]; then
	echo "Initializing the user password..."

	# generate password
	PASS=${CONTAINER_PASS:-$(date +%s | sha256sum | base64 | head -c 16 ; echo)}
	# change password
    # ---> put code here
    # touch this file ...
	touch /.init_password

	echo "Initializing the user password : done!"
fi

# display info
echo ""
echo "######################################################################"
echo "You can now connect to this CONTAINER using :"
echo ""
echo "    <information>"
if [ ! -d ${PASS} ]; then
	echo "    with the password '$PASS'"
	echo ""
	echo "Please remember to change the above password as soon as possible!"
else
	echo "    and enter the password"
fi
echo ""
echo "######################################################################"
echo ""

# start service
exec /sonarqube-5.1/bin/linux-x86-64/sonar.sh console

