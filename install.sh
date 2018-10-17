#!/bin/bash

# TODO: install stuff :(

# Install dependencies:
sudo apt install vim
sudo apt install build-essential
sudo apt install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

# Install vundle and rice vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
grep -q -F 'source ~/Dotfiles/vim/vimrc.vim' ~/.vimrc|| echo 'source ~/Dotfiles/vim/vimrc.vim' >> ~/.vimrc 
vim +PluginInstall +qall

# Install Tmuxline (should be inside tmux)
vim -c 'Tmuxline lightline' +qall
vim -c 'TmuxlineSnapshot ~/Dotfiles/tmux/snapshot' +qall

# Install YouCompleteMe
sudo apt-get install python3-dev
python3 ~/.vim/bundle/YouCompleteMe/install.py --clang-completer

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

# Install oh-my-zsh
sudo apt-get install zsh
sudo apt-get install curl wget

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo 'source ~/Dotfiles/zsh/zshrc.sh' >> ~/.zshrc
