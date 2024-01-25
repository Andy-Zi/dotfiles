#!/bin/bash

# Create symlinks
ln -s ~/.config/dotfiles/nvim ~/.config/nvim
ln -s ~/.config/dotfiles/.zshrc ~/.zshrc
ln -s ~/.config/dotfiles/.tmux.conf ~/.tmux.conf


# Install oh my zsh
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

chsh -s $(which zsh)

# install starship
curl -sS https://starship.rs/install.sh | sh

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

git clone https://github.com/catppuccin/zsh-syntax-highlighting.git
cd zsh-syntax-highlighting/
mkdir ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/themes
cp -vr /themes ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/themes
cd ..
rm -rf zsh-syntax-highlighting

# Install tmux
sudo apt-get install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
sudo apt install bat
sudo apt install zoxide
