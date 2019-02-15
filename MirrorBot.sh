echo "Enter URL to be uploaded to Google Drive: "
read link
wget --content-disposition --max-redirect 100000 $link -O "/home/acoffeerunner/Downloads/file"
cd ~/Downloads
mv file $(basename $link)
gdrive upload $(basename $link)
cd ../MirrorBot
