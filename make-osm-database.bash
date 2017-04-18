#! /bin/bash

pushd ~/oregon_osm_shapefiles
dropdb oregon_osm; createdb -O ${USER} oregon_osm
psql -d oregon_osm -c "CREATE EXTENSION postgis CASCADE;"
psql -d oregon_osm -c "CREATE SCHEMA gis AUTHORIZATION ${USER};"
for i in *.shp
do
  j=`echo $i|sed 's;.shp$;;'`
  echo "loading shapefile $i into table $j"
  shp2pgsql -cI -s 4326 $i $j | psql -d oregon_osm > $i.log
done
popd
