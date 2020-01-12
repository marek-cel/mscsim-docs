#!/bin/bash
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/ogdi

function createShapefiles()
{
  ogr2ogr -t_srs "+proj=merc +datum=WGS84" \
    ${1}_pop_builtupa.shp \
    gltp:/vrf${PWD}/${1}/vmaplv0/${2} 'builtupa@pop(*)_area'
  ogr2ogr -t_srs "+proj=merc +datum=WGS84" \
    ${1}_hydro_watrcrsl.shp \
    gltp:/vrf${PWD}/${1}/vmaplv0/${2} 'watrcrsl@hydro(*)_line'
  ogr2ogr -t_srs "+proj=merc +datum=WGS84" \
    ${1}_hydro_inwatera.shp \
    gltp:/vrf${PWD}/${1}/vmaplv0/${2} 'inwatera@hydro(*)_area'
  ogr2ogr -t_srs "+proj=merc +datum=WGS84" \
    ${1}_trans_roadl.shp \
    gltp:/vrf${PWD}/${1}/vmaplv0/${2} 'roadl@trans(*)_line'
  ogr2ogr -t_srs "+proj=merc +datum=WGS84" \
    ${1}_trans_railrdl.shp \
    gltp:/vrf${PWD}/${1}/vmaplv0/${2} 'railrdl@trans(*)_line'
}

createShapefiles v0eur_5 eurnasia
createShapefiles v0noa_5 noamer
createShapefiles v0sas_5 sasaus
createShapefiles v0soa_5 soamafr
