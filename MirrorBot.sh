echo "Enter URL to be uploaded to Google Drive: "
read link
wget --content-disposition --max-redirect 100000 $link -O "file"
mv file $(basename $link)
gdrive upload $(basename $link)
