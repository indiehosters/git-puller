#!/bin/bash -eux

while true
do
  START=`date +%s`
  for directory in `find /domains/ -mindepth 3 -name .git -type d -prune -not -path "/domains/trash/*" -not -path "/domains/backups/*" -not -path "*data/apps*" -not -path "*data/data*"`
  do
    cd $directory
    cd ..
    git pull
  done
sleep $((60 - `date +%s` + $START))
done
