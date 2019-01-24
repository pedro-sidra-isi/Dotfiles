#!/bin/bash

# Updates plugins that are added as submodules
git submodule update --init --recursive

# Install stuff:
sudo apt install vim
sudo apt install build-essential
sudo apt install cmake git libgtk2.0-dev pkg-config

# Install vundle (Plugin manager for vim)
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# If there's not a line in .vimrc sourcing my rc, source it
grep -q -F 'source ~/Dotfiles/vim/vimrc.vim' ~/.vimrc|| echo 'source ~/Dotfiles/vim/vimrc.vim' >> ~/.vimrc 
# Install plugins
vim +PluginInstall +qall

# Install Tmuxline (should be inside tmux, or this fails)
vim -c 'Tmuxline lightline' +qall
vim -c 'TmuxlineSnapshot ~/Dotfiles/tmux/snapshot' +qall

# Install YouCompleteMe
sudo apt-get install python3-dev
if ! ls ~/.vim/bundle/YouCompleteMe/python
then
	python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
fi

# Install powerline fonts (set in terminal for prettiness)
if ! ( ls ~/.local/share/fonts/ | grep powerline )
then
	git clone https://github.com/powerline/fonts.git --depth=1
	cd fonts
	./install.sh
	cd ..
	rm -rf fonts
fi

echo 'source-file ~/Dotfiles/tmux/tmux.conf' > ~/.tmux.conf

# Install oh-my-zsh manually
sudo apt-get install zsh
git clone https://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
# change default shell to zsh
chsh -s /bin/zsh
echo 'source ~/Dotfiles/zsh/zshrc.sh' > ~/.zshrc

sudo apt-get install python3-pip
pip3 install --user pynvim

