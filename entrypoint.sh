#!/bin/bash -eux

while /bin/true; do
  for dir in `cat /list`;
  do
    cd $dir
    git pull
done
