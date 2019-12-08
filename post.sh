#!/bin/bash
CURRENTDATETIME=`date +"%Y-%m-%d %T"`
bundle exec jekyll build
cd images
for i in *.jpg; do echo "Processing $i"; exiftool -all= "$i"; rm "$i"_original;  done
cd ../
git add --all
git commit -m "$CURRENTDATETIME"
git push