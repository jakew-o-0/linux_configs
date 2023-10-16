#bin/bash

#istall neovim, tmux, zsh, oh-my-zsh, starship, zsh-syntax-hylighting, zsh-autosuggestions 
yay -S neovim tmux zsh starship

#premove zsh config to avoid issues with the zsh installer
cp ~/linux_configs/dot-files/.zshrc ~/

# set zsh as shell
chsh /usr/bin/zsh

#install oh-my-zsh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh

#install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

#move config files
cp -r ~/linux_configs/dot-files/tmux ~/.config
cp -r ~/linux_configs/dot-files/nvim ~/.config
