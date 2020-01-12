#!/bin/bash
FILES=./merged/*
for f in $FILES
do
  filename=$(basename "$f")
  gdalwarp -srcnodata 0 -dstalpha -t_srs "+proj=latlong \
    +datum=WGS84" -of GTiff merged/$filename latlong/$filename
done
