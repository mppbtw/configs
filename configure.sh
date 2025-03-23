echo "Enter device name"
read device
touch ./dotfiles/hypr/.config/hypr/devices.conf
if [[ -n $device ]]; then 
    echo "source = ~/.config/hypr/$device.conf" > ./dotfiles/hypr/.config/hypr/devices.conf
else
    echo "" > ./dotfiles/hypr/.config/hypr/devices.conf
fi
