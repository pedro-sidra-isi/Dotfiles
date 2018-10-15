#!/bin/bash

# TODO: install stuff :(

# Install powerline fonts
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf

mv PowerlineSymbols.otf ~/.fonts
fc-cache -vf ~/.fonts
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

# Install vundle and rice vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
echo "source ~/Dotfiles/vim/vimrc.vim" >> ~/.vimrc
# Install YouCompleteMe
sudo apt-get install python3-dev
python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer

#sudo apt-get install fonts-powerline
