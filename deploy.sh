#!/bin/bash

renameFolders(){
	echo "Renaming folder docs/$1 to docs/$2"	
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -Q "-RNFR $1" -Q "-RNTO $2"
}

timestamp=`date +"%Y%m%d%H%M%S"`
destFile="master_"$timestamp
echo "Saving old docs to $destFile/"
renameFolders "master" "$destFile"

cd build

if curl -u $FTP_USER:$FTP_PASS --output /dev/null --silent --head --fail "ftp://ftp.goko.fr/www/docs/master/"; then
	# master folder already exists. It should not at this point
	echo "Failed : master folder still exists. Previous documentation was not archived ?"
else
	echo "Updating new documentation"
	for f in $(find . -type f)
	do
	  echo "$f"
	  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/master/$f
	done
fi
