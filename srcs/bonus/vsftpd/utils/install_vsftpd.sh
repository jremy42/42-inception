#!/bin/sh

egrep "^$FTP_USER" /etc/passwd >/dev/null
if [ $? -eq 1 ]; then
	delgroup www-data
    adduser -u 82 -g 82 -D ${FTP_USER} && echo ${FTP_USER}:${FTP_PASS} | chpasswd
    [ $? -eq 0 ] && echo "User has been added to system!" || echo "Failed to add a user!"
    chown -R ${FTP_USER}:${FTP_USER} /home/"${FTP_USER}"
    cat << EOB
	*************************************************
	*                                               *
	*           SERVEUR SETTING                      *
	*                                               *
	*************************************************

	SERVER SETTINGS
	---------------
	· FTP User: $FTP_USER
	· FTP Password: $FTP_PASS
EOB
fi
 echo -e "FTP listen on :21"
 exec "$@"