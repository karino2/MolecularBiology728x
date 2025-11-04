#!/usr/bin/env zsh

SCRIPTS_DIR=$(dirname $0)

cd $SCRIPTS_DIR
./copy.sh $1
./conv.sh
