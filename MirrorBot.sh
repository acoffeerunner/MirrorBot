echo "Enter URL to be uploaded to Google Drive: "
read link
axel -n 6 $link --output="file"
mv file $(basename $link)
gdrive upload $(basename $link)
