#!/bin/bash
/usr/local/bin/merger ${1}_nn80.tif ${1}_nn40.tif \
  ${1}_nn30.tif ${1}_nn20.tif ${1}_nn10.tif ${1}.tif \
  --quiet -tilesize=0
