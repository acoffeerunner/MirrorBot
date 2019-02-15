echo "Enter URL to be uploaded to Google Drive: "
read link
wget --content-disposition $link -O "file"
mv file $(basename $link)
gdrive upload $(basename $link)
