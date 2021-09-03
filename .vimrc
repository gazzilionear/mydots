"base stuff
set background=dark
filetype plugin on
set relativenumber
set nu
set nohlsearch
set nowrap


set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set spell
set smartcase
set scrolloff=4


filetype indent on


call plug#begin('~/.vim/plugged')

Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'gruvbox-community/gruvbox'

call plug#end()


"colorscheme peachpuff
colorscheme gruvbox
syntax on
