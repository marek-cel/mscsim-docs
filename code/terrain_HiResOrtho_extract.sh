#!/bin/bash
mkdir extracted_temp
FILES=./downloaded/*
for f in $FILES
do
  filename=$(basename "$f")
  unzip -jn $f -d extracted_temp
done
mv extracted_temp/*.tif extracted/
rm -R extracted_temp/
