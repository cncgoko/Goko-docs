#!/bin/bash


deleteFolders(){
	for file in $(curl -s -l -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/$1); 
	do
	 echo "Removing file www/download/$1$file"
	 curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/ -X "DELE $file"
	done
	echo "Removing folder www/download/$1"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/ -X "RMD $1"
	
}

echo "Cleaning old docs..."
deleteFolders master/

cd output

for f in $(find . -type f)
do
  echo "$f"
  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
done
