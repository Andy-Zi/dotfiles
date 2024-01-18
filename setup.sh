#!/bin/bash

# Create symlinks
ln -s ~/.config/dotfiles/nvim ~/.config/nvim
ln -s ~/.config/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.config/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.config/dotfiles/.tmux ~/.tmux
ln -s ~/.config/dotfiles/.zshrc ~/.zshrc
ln -s ~/.config/dotfiles/.tmux.conf ~/.tmux.conf

# Install oh my zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
