#!/bin/bash -
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
cd "$SCRIPTPATH"

apt-get build-dep -y vim-gnome
cd src/
./configure --with-features=huge --enable-multibyte --enable-perlinterp --enable-rubyinterp --enable-tclinterp --enable-cscope --enable-pythoninterp \
    && make \
    && cd - \
    && ~/loadrc/gitrc/gci.sh

cd -
