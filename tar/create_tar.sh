#!/bin/sh
# ------------------------------------------------------------------------------
#  Pi.Alert
#  Open Source Network Guard / WIFI & LAN intrusion detector 
#
#  create_tar.sh - Create the tar file for installation
# ------------------------------------------------------------------------------
#  Puche 2021        schmidt@linux.com        GNU GPLv3
# ------------------------------------------------------------------------------

PIALERT_DEV_PATH=/home/david/workdir/
cd $PIALERT_DEV_PATH
pwd
PIALERT_VERSION=`awk '$1=="VERSION" { print $3 }' Pi.Alert/config/version.conf | tr -d \'`

# ------------------------------------------------------------------------------
ls -l Pi.Alert/tar/pialert*.tar
tar tvf Pi.Alert/tar/pialert_latest.tar | wc -l
rm Pi.Alert/tar/pialert_*.tar

# ------------------------------------------------------------------------------
tar cvf Pi.Alert/tar/pialert_$PIALERT_VERSION.tar --exclude="Pi.Alert/tar" --exclude="Pi.Alert/.git" pialert | wc -l

ln -s pialert_$PIALERT_VERSION.tar Pi.Alert/tar/pialert_latest.tar
ls -l Pi.Alert/tar/pialert*.tar
