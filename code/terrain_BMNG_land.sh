gdal_translate -a_ullr -180.0 90.0 180.0 -90.0 -a_srs \
  "+proj=latlong +datum=WGS84" -of Gtiff \
  land_ocean_ice_8192.png land_ocean_ice_8192.tif
