#!/bin/bash

for f in $(find output/)
do
  echo "$f"
  #curl --ftp-create-dirs -T $f -u $FTP_USER:$FTP_PASS ftp://ftp.goko.fr//www/docs/v0.3.0/$f
done
