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

" AutoPEP8
Plugin 'hhatto/autopep8'

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

" Auto brackets
Plugin 'jiangmiao/auto-pairs'

" Folding
Plugin 'tmhedberg/SimpylFold'
Plugin 'Konfekt/FastFold'

" Completion
" Plugin 'oblitum/YouCompleteMe'
Plugin 'Shougo/deoplete.nvim'
Plugin 'roxma/nvim-yarp'
Plugin 'roxma/vim-hug-neovim-rpc'
Plugin 'zchee/deoplete-jedi'

" Linting
Plugin 'w0rp/ale'

" Lint indicator in LightLine
Plugin 'maximbaz/lightline-ale'

" Colors
Plugin 'flazz/vim-colorschemes'

" Python
Plugin 'davidhalter/jedi-vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'hdima/python-syntax'
Plugin 'jeetsukumaran/vim-pythonsense.git'
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

    colorscheme Monokai

" DeoPlete
    let g:deoplete#enable_at_startup = 1
    let g:ale_fixers= ['autopep8','black']
      " let g:deoplete#disable_auto_complete = 1
      autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
      inoremap <expr><tab> pumvisible()?"\<c-n>" : "\<tab>"
    
" ALE Shortcuts
    nmap <silent> <leader>e :ALENext<cr>

" YouCompleteMe Configs
	" let g:ycm_autoclose_preview_window_after_completion=1
	" map <leader>d  :YcmCompleter GoToDefinitionElseDeclaration<CR>
" Jedi configs
    let g:jedi#completions_enabled = 0
" Lightline + ALE:
    let g:lightline = {}

    let g:lightline.component_expand = {
          \  'linter_checking': 'lightline#ale#checking',
          \  'linter_warnings': 'lightline#ale#warnings',
          \  'linter_errors': 'lightline#ale#errors',
          \  'linter_ok': 'lightline#ale#ok',
          \ }
    let g:lightline.component_type = {
          \     'linter_checking': 'left',
          \     'linter_warnings': 'warning',
          \     'linter_errors': 'error',
          \     'linter_ok': 'left',
          \ }
    let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }

" Tmuxline
	let g:tmuxline_preset = 'nightly_fox'
	let g:tmuxline_powerline_separators = 0

" Python conf

let python_highlight_all=1
autocmd FileType python nnoremap <F7> :let @b ='b'
autocmd FileType python nnoremap <F9> :!clear; python3 % b
autocmd FileType python inoremap <buffer> <F9> :!clear;python3 %

autocmd FileType python nnoremap <buffer> <F8> :!clear;python3 -m pdb % 
autocmd FileType python inoremap <buffer> <F8> :!clear;python3 -m pdb %
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

	map <Leader>m ]m
	map <Leader>M [m

	" fold
	map <Leader>f za

    " Fix
    map <Leader>8 :ALEFix<CR>

    " insert docstring
    map <Leader>s o"""<Esc>o"""<Esc>O

	" put from system clipboard
	map <Leader>p "*p

	" Clear search
	map <Leader>/ :let @/ = "" <CR>

	" Reload vimrc
	map <Leader>rc :source ~/.vimrc <CR>

	" Look in home dir for file
	map <Leader>~ :Files ~<CR>



