#!/bin/sh -l

lftp ${INPUT_HOST} -u ${INPUT_USER},${INPUT_PASSWORD} -e "
  set net:timeout 60;
  set net:max-retries 20;
  set net:reconnect-interval-multiplier 1;
  set net:reconnect-interval-base 5;
  set ftp:ssl-force $INPUT_FORCESSL; 
  set sftp:auto-confirm yes;
  set ssl:verify-certificate $INPUT_FORCESSL; 
  mirror -v -P 5 -R -x ^\.git/$ $INPUT_LOCALDIR $INPUT_REMOTEDIR;
  quit
"
