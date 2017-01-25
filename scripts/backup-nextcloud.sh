#!/bin/bash

# Define global vars
DATE="$(date +%s)";

# Create tmp dir
cd ~;
mkdir tmp-$DATE;
cd tmp-$DATE;

# Backup Nextcloud Install dir
rsync -Aax /var/www/nextcloud ./nextcloud-dir;

# Backup Nextcloud data folder
sudo rsync -Aa /lvm/nextcloud_data ./;

# Zip
cd ../;
sudo 7z a tmp-$DATE.7z tmp-$DATE/;
sudo chown victor:victor tmp-$DATE.7z;

# Rclone
rclone copy tmp-$DATE.7z GDrive_Encrypted:;

#Remove tmp files

sudo rm -rf tmp-$DATE/ tmp-$DATE.7z;