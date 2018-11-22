#!/bin/bash


echo "insert youtube URL"
read url




var=`echo $url | awk -F "=" '{print $2}'`



var2=`curl -Ls "https://www.easy-youtube-mp3.com/download.php?v=$var"  | grep -Eo "https*.*@download*.*.mp3" | xargs wget`




