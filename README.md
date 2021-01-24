# iocage-plugin-emby
Artifact file(s) for Emby Server iocage plugin.


NOTE: I had issues running Emby once I set the mount points.  To resolve:
* stop the Emby jail
* move the all the data from the app-data/emby folder into a new folder inside app-data/emby/ folder eg) app-data/emby/emby-old
* create the mount locations
* start Emby (emby will populate the app-data/emby folder with the files it needs
* stop the emby-server service
* copy the config/systems.xml file from emby-old folder to app-data/emby/config/ folder
* restart emby-server service
