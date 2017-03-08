#!/bin/bash

# Define global vars 
DATE="$(date +%s)";
BACKUPDIR=nextcloud-backup-$DATE;

cd /tmp/;
mkdir $BACKUPDIR;
cd $BACKUPDIR;

# Copy Nextcloud Install dir
rsync -Aax /var/www/nextcloud ./;

# Copy nextcloud data folder
sudo rsync -Aa /lvm/nextcloud_data ./; 

# Tar
cd ../;
tar -cvf $BACKUPDIR.tar ./$BACKUPDIR; # Maybe zip for faster upload? TODO: Need to test what is faster.

# Rclone upload
rclone copy $BACKUPDIR.tar ACD_Encrypted:/nextcloud_backups/;

# Remove tmp files
sudo rm -rf $BACKUPDIR $BACKUPDIR.tar;
