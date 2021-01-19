#!/bin/sh

# set the data location
DATA_LOCATION="/app-data/emby"

# create the data location
mkdir -p $DATA_LOCATION
mkdir -p /app-data/TV
mkdir -p /app-data/Movies
mkdir -p /app-data/Pictures
mkdir -p /app-data/Music

# make "emby" the owner of the data location
chown -R emby:emby $DATA_LOCATION

# enable emby to start at boot
sysrc "emby_server_enable=YES"

# set the location for the data directory
sysrc "emby_server_data_dir=$DATA_LOCATION"

## NOTE: we need to mount the file systems before starting the server
# start the lidarr service
#service emby_server start
