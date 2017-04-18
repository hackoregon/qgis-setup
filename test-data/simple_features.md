ROW Closure Exploration
================

``` r
# libraries
library(sf)
```

    ## Linking to GEOS 3.5.0, GDAL 2.1.0, proj.4 4.9.2, lwgeom 2.3.2 r15302

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
# read shapefile (uses unpacked zipfile)
row_closures <- st_read("~/Downloads/HackOregon/ROWClosures/ROWClosures_02012017.shp")
```

    ## Reading layer `ROWClosures_02012017' from data source `/home/znmeb/Downloads/HackOregon/ROWClosures/ROWClosures_02012017.shp' using driver `ESRI Shapefile'
    ## converted into: POLYGON
    ## Simple feature collection with 28080 features and 21 fields
    ## geometry type:  MULTIPOLYGON
    ## dimension:      XY
    ## bbox:           xmin: 7604942 ymin: 652228.5 xmax: 7698007 ymax: 726637.9
    ## epsg (SRID):    NA
    ## proj4string:    +proj=lcc +lat_1=44.33333333333334 +lat_2=46 +lat_0=43.66666666666666 +lon_0=-120.5 +x_0=2500000 +y_0=0 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=ft +no_defs

``` r
# ClosureSta is a factor - how many levels??
levels(row_closures$ClosureSta)
```

    ## [1] "ACTIVE"    "CANCELED"  "COMPLETED" "DENIED"    "REQUESTED"

``` r
# Just get the active ones
active_row_closures <- row_closures %>% dplyr::filter(ClosureSta == "ACTIVE")

# How many active ones?
print(nrow(active_row_closures))
```

    ## [1] 639
