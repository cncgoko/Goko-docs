#!/bin/bash

renameFolders(){
	echo "Renaming folder www/download/$1 to $2"
	#curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1 -X "RNFR $1 RNTO $2"
}
previousDocVersion='0.3.2'
timestamped=`date +"%Y%m%d%H%M%S"`
destFile=$previousDocVersion+"_"+$timestamped
echo "Saving old docs to $destFile/"
echo "Cleaning old docs..."
