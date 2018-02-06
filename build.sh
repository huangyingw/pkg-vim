#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd src/
./configure \
    --enable-cscope \
    --enable-multibyte \
    --enable-perlinterp \
    --enable-pythoninterp \
    --enable-rubyinterp \
    --enable-tclinterp \
    --with-features=huge \
    --with-tlib=ncurses \
    && make \
    && make install \
 