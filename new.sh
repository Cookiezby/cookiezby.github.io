#!/bin/bash
CURRENTDATE=`date +"%Y-%m-%d"`
sed "s/Title/$1/g" Template.md > _posts/$CURRENTDATE-$1.md