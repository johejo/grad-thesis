#!/bin/bash

readonly PROJECT=grad-thesis
readonly LATEX=uplatex
readonly DVIPDF=dvipdfmx
readonly BUILD_DIR=build

./clean.sh

for i in `seq 2`
do
    $LATEX $PROJECT.tex
done

$DVIPDF -f $PROJECT.map $PROJECT.dvi

mkdir $BUILD_DIR
mv $PROJECT.pdf $BUILD_DIR/