#!/bin/sh
set -x -e
ln -sf ~/.spacemacs.d/.spacemacs ~/.spacemacs
killall Emacs || echo "Emacs not running"
wget -O /Applications/Emacs.app/Contents/Resources/Emacs.icns https://github.com/cg433n/emacs-yosemite-icon/raw/master/emacs.icns
