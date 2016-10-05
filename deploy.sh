#!/bin/bash

lftp $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/ -e "mv master master_" 

cd output

for f in $(find . -type f)
do
  echo "$f"
  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
done
