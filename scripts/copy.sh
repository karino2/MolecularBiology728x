#!/usr/bin/env zsh

SUBWIKI_NAME="MolecularBiology728x"

SCRIPTS_DIR=$(dirname $0)
TEFWIKI_DIR=$1/TeFWiki
DEST_SRC="${SCRIPTS_DIR}/../wiki_src"
DEST_RES="${SCRIPTS_DIR}/../wiki"

rm $DEST_SRC/*
rm $DEST_RES/*
cp ${TEFWIKI_DIR}/${SUBWIKI_NAME}/*.md $DEST_SRC/
