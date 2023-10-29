#!/bin/bash

# Get the path to the download and the name of the torrent
download_path="$2"
torrent_name="$1"
torrent_label="$3"

# if Category is empty then set it to SYNC

if [ -z "$torrent_label" ];
    then
        torrent_label="SYNC"
    fi

# if category is SEED then do nothing

if ["$torrent_label" == "SEED"];
    then
        exit 0
    fi

# The destination folder
destination="/home4/foghorn/downloads/qbittorrent/$torrent_label"

cp -lR "$download_path/$torrent_name" "$destination/"

echo "qbit-hardlinker task successfull"
