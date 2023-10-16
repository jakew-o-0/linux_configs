#bin/bash

# installing yay
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

yay -Y --gendb
yay -Syu --devel --save

# installing packages for PKGBUILD config
yay -S mold pigz pbzip2 lbzip2 plzip
mv ~/linux_configs/arch-sys-config/makepkg.conf /etc/makepkg.conf

# installing packages
yay -S hyprland hyprpaper rofi-wayland-only-git kitty ttf-cascadia-code-nerd
cp -r ~/linux_configs/dot-files/hypr ~/.config
cp -r ~/linux_configs/dot-files/rofi ~/.config
cp -r ~/linux_configs/dot-files/kitty ~/.config
