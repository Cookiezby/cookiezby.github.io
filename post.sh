#!/bin/bash
CURRENTDATETIME=`date +"%Y-%m-%d %T"`
bundle exec jekyll build
git add --all
git commit -m "$CURRENTDATETIME"
git push