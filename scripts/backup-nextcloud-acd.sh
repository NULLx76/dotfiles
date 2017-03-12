#!/bin/bash

# Define global vars 
DATE="$(date +%s)";
BACKUPDIR=nextcloud-backup-$DATE;

cd /tmp/;
mkdir $BACKUPDIR;
cd $BACKUPDIR;

# Copy Nextcloud Install dir
sudo rsync -Aax /var/www/nextcloud ./;

# Copy nextcloud data folder
sudo rsync -Aa /lvm/nextcloud_data ./; 

# Tar
cd ../;
sudo tar -zcvf $BACKUPDIR.tar.gz ./$BACKUPDIR; # Maybe zip for faster upload? TODO: Need to test what is faster.
sudo chown victor:victor $BACKUPDIR.tar.gz

# Rclone upload
rclone copy $BACKUPDIR.tar.gz ACD_Encrypted:/nextcloud_backups/;

# Remove tmp files
sudo rm -rf $BACKUPDIR $BACKUPDIR.tar.gz;
