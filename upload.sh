 #!/bin/bash
 
readonly BUILD_DIR=build
readonly DROPBOX_UPLOADER_URL=https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh

 curl $DROPBOX_UPLOADER_URL -o dropbox_uploader.sh
 chmod +x dropbox_uploader.sh
 echo "OAUTH_ACCESS_TOKEN=($DROPBOX_TOKEN)"  >  ~/.dropbox_uploader
./dropbox_uploader.sh upload $BUILD_DIR/grad-thesis.pdf .
