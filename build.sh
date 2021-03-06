#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

cd src/
./configure --with-features=huge --enable-multibyte --enable-perlinterp --enable-rubyinterp --enable-tclinterp --with-tlib=ncurses --enable-cscope --enable-pythoninterp \
    && make \
    && cd - \
    && ~/loadrc/gitrc/gci.sh

cd -
