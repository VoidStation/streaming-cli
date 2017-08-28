#! /bin/bash
# Stream to Facebook from an UDP camera source
# Copyright (c) Void Station | Kjeld Kahn
# Version 0.0.1
# License > The Unlicense

FACEBOOK_INGEST="rtmp://rtmp-api.facebook.com:80/rtmp/"	# Facebook ingest URL
CAMERASOURCE="udp://@:1234"								# UDP source
STREAMKEY="your-priv-atek-ey01"							# Facebook Stream Key for post https://business.facebook.com/YOUR-PAGE/publishing_tools/?section=VIDEOS

printf "Please read https://github.com/VoidStation/streaming-cli/blob/master/README.md\n  stream2youtube version 0.0.1 by Void Station | Kjeld Kahn\n\n"

: 'echo ffmpeg \
    -i "$CAMERASOURCE" \
    -c copy -bsf:a aac_adtstoasc \
    -f flv "$FACEBOOK_INGEST$STREAMKEY"'

ffmpeg \
    -i "$CAMERASOURCE" \
    -c copy -bsf:a aac_adtstoasc \
    -f flv "$FACEBOOK_INGEST$STREAMKEY"

printf "\nPlease read https://github.com/VoidStation/streaming-cli/blob/master/README.md\n\n"