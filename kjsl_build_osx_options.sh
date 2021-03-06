#!/bin/bash

# KJSL: script to build FFmpeg on OSX

#if [ ! -d /usr/local/include/openjpeg-2.3/include ]; then
#cd openjpeg 
#./configure
#make
#sudo make install
#fi

# build FFmpeg 4 (with AV1)
 PKG_CONFIG_PATH="/usr/local/lib/pkgconfig" ./configure  --prefix=/usr/local --help
 --extra-ldflags="-L/usr/local/Cellar/lame/3.99.5/lib \
 -L/usr/local/Cellar/libogg/1.3.2/lib \
 -L/usr/local/Cellar/theora/1.1.1/lib \
 -L/usr/local/Cellar/libvorbis/1.3.5/lib \
 -L/usr/local/Cellar/xvid/1.3.4/lib \
 -I/usr/local/Cellar/openssl/1.0.2p/lib \
 -L/usr/local/lib/openjpeg-2.3/lib \
 -L/usr/lib" \
 --extra-cflags="-I/usr/local/Cellar/lame/3.99.5/include \
 -I/usr/local/Cellar/libogg/1.3.2/include \
 -I/usr/local/Cellar/theora/1.1.1/include \
 -I/usr/local/Cellar/libvorbis/1.3.5/include \
 -I/usr/local/Cellar/xvid/1.3.4/include \
 -I/usr/local/Cellar/sdl/1.2.15/include \
 -I/usr/local/Cellar/openssl/1.0.2p/include \
 -I/usr/local/include/openjpeg-2.3 \
 -I/usr/include"
