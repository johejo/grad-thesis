 curl "https://raw.githubusercontent.com/andreafabrizi/Dropbox-Uploader/master/dropbox_uploader.sh" -o dropbox_uploader.sh
 chmod +x dropbox_uploader.sh
 echo "OAUTH_ACCESS_TOKEN=($DROPBOX_TOKEN)"  >  ~/.dropbox_uploader
./ dropbox_uploader.sh upload grad-thesis .pdf .