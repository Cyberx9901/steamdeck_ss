#!/bin/bash
### change this line to your user id if you want to use the script on your Steam Deck, you can get your user id from the website: https://steamdb.info/
USERID=487786334
###

for i in $(find /home/deck/.steam/steam/userdata/$USERID/ -name "*.jpg" | grep screenshot)
do
cp -v "$i" ss/
done
git add .
git commit --allow-empty-message -m ""
git push
