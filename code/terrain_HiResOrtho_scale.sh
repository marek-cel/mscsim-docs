#!/bin/bash
FILES=./extracted/*
for f in $FILES
do
  filename=$(basename "$f")
  gdal_translate -outsize 300 300 -of Gtiff \
    extracted/$filename scaled/$filename
done
