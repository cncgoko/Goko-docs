#!/bin/bash


deleteFolders(){
	for file in $(curl -s -l -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1);
	do
	 echo "Removing file www/download/$1$file"
	 curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1 -X "DELE $file"
	done
	echo "Removing folder www/download/$1"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1 -X "RMD $1"

}

renameFolders(){
	echo "Renaming folder www/download/$1 to $2"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1 -X "RNFR $1 RNTO $2"
}
timestamp = date +"%Y%m%d%H%M%S"
echo "Cleaning old docs..."
renameFolders master/ "$previousDocVersion_$timestamp"

cd output

for f in $(find . -type f)
do
  echo "$f"
  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
done
