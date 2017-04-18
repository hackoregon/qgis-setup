#! /bin/bash

echo "Downloading shapefile format document"
wget -q http://download.geofabrik.de/osm-data-in-gis-formats-free.pdf

echo "Downloading and unpacking Oregon OpenStreetMap shapefiles"
rm -fr ~/oregon_osm_shapefiles; mkdir -p ~/oregon_osm_shapefiles; pushd ~/oregon_osm_shapefiles
wget -q http://download.geofabrik.de/north-america/us/oregon-latest-free.shp.zip
unzip -qq oregon-latest-free.shp.zip
popd
