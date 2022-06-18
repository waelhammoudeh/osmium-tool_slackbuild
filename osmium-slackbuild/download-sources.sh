#!/bin/bash

# script to download 3 sources files required for osmium-tool
# Please use this script ... it renames downloaded files to expected names!

OSMIUM_VER=1.14.0
LIBOSM_VER=2.18.0
PROTO_VER=1.7.1
ODDV=v

if [  ! -f libosmium-$LIBOSM_VER.tar.gz ]; then
while true;do
            wget https://github.com/osmcode/libosmium/archive/refs/tags/$ODDV$LIBOSM_VER.tar.gz && break
            rm $ODDV$LIBOSM_VER.tar.gz
        done

        mv $ODDV$LIBOSM_VER.tar.gz libosmium-$LIBOSM_VER.tar.gz
fi

if [  ! -f protozero-$PROTO_VER.tar.gz  ]; then
while true;do
            wget https://github.com/mapbox/protozero/archive/refs/tags/$ODDV$PROTO_VER.tar.gz && break
            rm $ODDV$PROTO_VER.tar.gz
        done

        mv $ODDV$PROTO_VER.tar.gz  protozero-$PROTO_VER.tar.gz
fi

if [ ! -f osmium-tool-$OSMIUM_VER.tar.gz ]; then
 while true;do
            wget https://github.com/osmcode/osmium-tool/archive/refs/tags/$ODDV$OSMIUM_VER.tar.gz && break
            rm $ODDV$OSMIUM_VER.tar.gz
        done

        mv $ODDV$OSMIUM_VER.tar.gz osmium-tool-$OSMIUM_VER.tar.gz
fi
