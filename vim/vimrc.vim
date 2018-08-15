" Keybindings

" Options
set relativenumber number
set autoindent
set shiftwidth=4
set tabstop=4
syntax on

set hlsearch

set showcmd

set background=dark

" Macros
" Plugins
set laststatus=2
set t_Co=256

" For powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" ------ VUNDLE -----
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/Dotfiles/vim/vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required

" ----------PLUGINS: 
Plugin 'VundleVim/Vundle.vim'
Plugin 'sudar/vim-arduino-syntax'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

