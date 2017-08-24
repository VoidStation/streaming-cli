#! /bin/bash
# Stream to YouTube from an UDP camera source
# Copyright (c) Void Station | Kjeld Kahn
# Version 0.0.1
# License > The Unlicense

YOUTUBE_INGEST="rtmp://a.rtmp.youtube.com/live2"	# YouTube ingest URL
CAMERASOURCE="udp://@:1234"							# UDP source
PRIVATEKEY="your-priv-atek-ey01"					# YouTube Privatekey

printf "Please read https://github.com/VoidStation/streaming-cli/blob/master/README.md\n  stream2youtube version 0.0.1 by Void Station | Kjeld Kahn\n\n"

: 'echo ffmpeg \
    -i "$CAMERASOURCE" \
    -c copy -bsf:a aac_adtstoasc \
    -f flv "$YOUTUBE_INGEST/$PRIVATEKEY"'

ffmpeg \
    -i "$CAMERASOURCE" \
    -c copy -bsf:a aac_adtstoasc \
    -f flv "$YOUTUBE_INGEST/$PRIVATEKEY"

printf "\nPlease read https://github.com/VoidStation/streaming-cli/blob/master/README.md\n\n"