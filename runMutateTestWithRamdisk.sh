#!/usr/bin/bash

GIT_HOME_DIR=$(pwd)
RAM_DISK_DIR=/dev/shm/mutate

dextool mutate analyze

mkdir -p $RAM_DISK_DIR
cp -arf . $RAM_DISK_DIR/

cd $RAM_DISK_DIR
ln -sf $GIT_HOME_DIR/dextool_mutate.sqlite3

dextool mutate test
