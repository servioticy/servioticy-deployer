#!/bin/bash

if [ -z "$ROOT" ]
then
    ROOT=$(while ! test -e env.sh.sample; do cd ..; done; pwd)
    export ROOT
fi

. $ROOT/env.sh


dsh -f $MACHINE_FILES_FOLDER/$MACHINE_FILE_CB  "rm -rf $SERVIOTICY_INSTALL_DIR; kill -9 -1"
dsh -f $MACHINE_FILES_FOLDER/$MACHINE_FILE_ES  "rm -rf $SERVIOTICY_INSTALL_DIR; kill -9 -1"
dsh -f $MACHINE_FILES_FOLDER/$MACHINE_FILE_JETTY  "rm -rf $SERVIOTICY_INSTALL_DIR; kill -9 -1"
dsh -f $MACHINE_FILES_FOLDER/$MACHINE_FILE_ZK  "rm -rf $SERVIOTICY_INSTALL_DIR;rm -rf $ZK_DATA_DIR; kill -9 -1"


