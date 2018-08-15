" Keybindings


" Macros

" Plugins
" Powerline
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
" ------ VUNDLE for Plugins ------------------------------------------
set nocompatible
filetype off
set rtp+=~/Dotfiles/vim/vundle.vim
call vundle#begin()
" *----------PLUGINS: 
Plugin 'VundleVim/Vundle.vim'
Plugin 'sudar/vim-arduino-syntax'

" *------------------ 
call vundle#end()            
filetype plugin indent on 
" -------------------------------------------------------------------

" Options
set relativenumber number
set autoindent
set shiftwidth=4
set tabstop=4
set showtabline=2 
set hlsearch
set showcmd
set background=dark
set noshowmode
set laststatus=2
set t_Co=256

syntax on
