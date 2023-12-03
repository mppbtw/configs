#!/bin/sh


ln -s /home/$USER/configs/scripts/ /home/$USER/


cd dotfiles
stow --target /home/$USER *
cd ..
