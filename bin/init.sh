#!/bin/sh

set -e

CONFIG=$(readlink -f $(dirname $0)/../spacemacs)
PROGRAM=".spacemacs"
cd ~
rm -rf $PROGRAM .emacs.d
ln -s $CONFIG $PROGRAM
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
