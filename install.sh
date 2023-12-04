#!/bin/sh

chmod +x /home/$USER/configs/scripts/*
if [ ! -e "/home/$USER/configs/scripts/" ]; then
    ln -s /home/$USER/configs/scripts/ /home/$USER/
fi

cd dotfiles
stow --target /home/$USER *
cd ..
