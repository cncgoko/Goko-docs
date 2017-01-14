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
	#curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -Q "-RNFR $1"
	#echo "2"
	#curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -Q "-RNTO $2"
	#echo "3"
	curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -Q "-RNFR $1" -Q "-RNTO $2"
	#%curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -X "RNTO $2"
	#curl -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr/www/docs/ -X "RNTO $2"
}

timestamp=`date +"%Y%m%d%H%M%S"`
destFile=$previousDocVersion"_"$timestamp
echo "Saving old docs to $destFile/"
renameFolders master "$destFile"

cd output

if curl --output /dev/null --silent --head --fail "$url"; then
	# master folder already exists. It should not at this point
	echo "Failed : master folder still exists. Previous documentation was not archived ?"
else
	echo "Updating new documentation"
	for f in $(find . -type f)
	do
	  echo "$f"
	  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
	done
fi
