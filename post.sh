#!/bin/bash
CURRENTDATETIME=`date +"%Y-%m-%d %T"`
bundle exec jekyll build
cp -r images _site/assets/images
git add --all
git commit -m "$CURRENTDATETIME"
git push