" Plugins
"
" ------ VUNDLE for Plugins ----------------
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" *----------PLUGINS: 
Plugin 'VundleVim/Vundle.vim'

" Arduino...
Plugin 'sudar/vim-arduino-syntax'

" Fuzzy Finding with ; 
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'

" Tree
Plugin 'scrooloose/nerdtree'

" Pretty
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'

" Tim Pope
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'

" Folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'Konfekt/FastFold'

Plugin 'davidhalter/jedi-vim'

" Python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'oblitum/YouCompleteMe'
" *------------------ 
"
call vundle#end()            
filetype plugin indent on 

" ------ VUNDLE end ----------------

" ------  Options
	" Show relative number and absolute number in current line
	set relativenumber number

	" Indentation stuff
	set autoindent
	set shiftwidth=4
	set tabstop=4
	set showtabline=2 
	set softtabstop=4
	set expandtab

	" Highlight while searching
	set hlsearch
	set incsearch

	" Show command on bottom right while typing
	set showcmd

	" Display stuff
	set background=dark
	set noshowmode
	set laststatus=2
	set t_Co=256
	set encoding=utf-8

	" Keep hidden buffer
	set hidden

	" Persistent undos
	set undofile
	set undodir=$HOME/.vim/undo
	set undolevels=1000
	set undoreload=1000

	" Folding
	set foldmethod=indent
	set foldlevel=99
	syntax on

" YouCompleteMe Configs
	let g:ycm_autoclose_preview_window_after_completion=1
	map <leader>d  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Tmuxline
	let g:tmuxline_preset = 'nightly_fox'
	let g:tmuxline_powerline_separators = 0

" Python conf

let python_highlight_all=1
autocmd FileType python nnoremap <buffer> <F9> :!clear;python3 %<cr>
autocmd FileType python inoremap <buffer> <F9> :!clear;python3 %<cr>

autocmd FileType python nnoremap <buffer> <F8> :!clear;python3 -m pdb %<cr>
autocmd FileType python inoremap <buffer> <F8> :!clear;python3 -m pdb %<cr>

" Keybindings
	map ; :Files<CR>
	map <C-T> :NERDTreeToggle<CR>
	map <F5> m8gg=G'8

	" control S to save
	noremap <silent> <C-S> :update<CR>
	vnoremap <silent> <C-S> <C-C>:update<CR>
	inoremap <silent> <C-S> <C-O>:update<CR>
    
	noremap <silent> <C-Q> :q<CR>
	vnoremap <silent> <C-Q> <C-C>:q<CR>
	inoremap <silent> <C-Q> <C-O>:q<CR>

    " Enter to add new line
    noremap <Return> o<Esc>


" Leader shortcuts
	let mapleader=' '

	" Move tabs 
	map <Leader>h gT
	map <Leader>l gt

	" fold
	map <Leader>f za

	" put from system clipboard
	map <Leader>p "*p

	" Clear search
	map <Leader>/ :let @/ = "" <CR>

	" Reload vimrc
	map <Leader>rc :source ~/.vimrc <CR>

	" Look in home dir for file
	map <Leader>~ :Files ~<CR>



