#!/bin/bash


deleteFolders(){
	for file in $(curl -s -l -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1);
	do
	 echo "Removing file download/$1$file"
	 curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/$1 -X "DELE $file"
	done
	echo "Removing folder download/$1"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/$1 -X "RMD $1"
}

renameFolders(){
	echo "Renaming folder docs/$1 to docs/$2"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -X "RNFR $1 RNTO $2"
	#curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -X "RNTO $2"
}

timestamp=`date +"%Y%m%d%H%M%S"`
destFile=$previousDocVersion"_"$timestamp
echo "Saving old docs to $destFile/"
renameFolders master "$destFile"

cd output

#for f in $(find . -type f)
#do
#  echo "$f"
#  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
#done
