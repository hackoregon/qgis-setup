# qgis-setup
Working repository for testing QGIS / PostGIS desktop tools

## Installation
You'll need PostgreSQL 9.6, PostGIS 2.3 and QGIS 2.18. See <https://github.com/hackoregon/getting-started/blob/master/datascience/Readme.md#installing-using-your-native-operating-system> if you don't have this already.

## Files
* get-osm-shapefiles.bash: create directory `~/oregon_osm_shapefiles` and download Oregon OSM shapefiles into it
* make-osm-database.bash: create database `oregon_osm` and load shapefiles into schema `gis`
* osm-data-in-gis-formats-free.pdf: documentation on the shapefiles from <http://download.geofabrik.de/osm-data-in-gis-formats-free.pdf>
