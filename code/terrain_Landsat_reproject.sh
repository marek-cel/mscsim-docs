#!/bin/bash
gdalwarp -srcnodata 0 -dstalpha -t_srs "+proj=latlong \
  +datum=WGS84" -of GTiff ${1}.tif ${1}_latlong.tif
