#!/bin/bash

# Get the path to the download and the name of the torrent
download_path="$2"
torrent_name="$1"
torrent_label="$3"

# The destination folder
destination="/home4/user/downloads/qbittorrent/$torrent_label"

# Validate that the required parameters have been passed
if [ -z "$download_path" ] || [ -z "$torrent_name" ] || [ -z "$destination" ] || [ -z "$torrent_label" ]; then
  echo "Error: missing required parameters."
  echo "Usage: $0 <torrent name> <download path>"
  exit 1
fi

cp -lR "$download_path/$torrent_name" "$destination/"

echo "qbit-hardlinker task successfull"
