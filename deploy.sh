#!/bin/bash

lftp -u $FTP_USER:$FTP_PASS mv master master_ ftp://ftp.goko.fr//www/docs/

cd output

for f in $(find . -type f)
do
  echo "$f"
  curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/master/$f
done
