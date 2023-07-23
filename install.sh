#!/bin/bash

# Install stuff:
sudo apt install build-essential
sudo apt install cmake git libgtk2.0-dev pkg-config

echo 'source-file ~/Dotfiles/tmux/tmux.conf' > ~/.tmux.conf

# Install oh-my-zsh manually
sudo apt-get install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
# change default shell to zsh
chsh -s /bin/zsh
echo 'source ~/Dotfiles/zsh/zshrc.sh' > ~/.zshrc
