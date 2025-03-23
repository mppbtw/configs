#!/bin/sh

if ! [[ -e ./dotfiles/hypr/.config/hypr/devices.conf ]]; then
    ./configure.sh
fi

cd dotfiles
stow --target /home/$USER *
cd ..
