#!/bin/sh
for ((i=0;i<=10000000;i++));
do
    touch $i
    git add $i
    git commit -m "+ '$i/'"
    rm -rf $i
    git add $i
    git commit -m "- '$i/'"	
done