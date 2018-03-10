#!/bin/bash

# Upload travis generated APKs to the Transfer.sh
cd /home/travis/build/SciFi1818/ScreenCaptureService/app/build/outputs/apk
ls
zip -r virtualhook.zip apk *
cu=`curl --upload-file ScreenCaptureService.zip https://transfer.sh/ScreenCaptureService.zip`

echo "Transfer.sh links:"
echo "Link :              ${cu}"
exit 0
