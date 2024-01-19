#!/bin/bash

# Create symlinks
ln -s ~/.config/dotfiles/nvim ~/.config/nvim
ln -s ~/.config/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/.config/dotfiles/.oh-my-zsh ~/.oh-my-zsh
ln -s ~/.config/dotfiles/.zshrc ~/.zshrc
ln -s ~/.config/dotfiles/.tmux.conf ~/.tmux.conf

# Install oh my zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install p10k theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


# Install tmux
sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/jimeh/tmuxifier.git ~/.tmuxifier
