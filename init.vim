"VM, 12/21/21


"vim-plug stuff, make sure you have it installed! Found at: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged/')

Plug 'gruvbox-community/gruvbox'

call plug#end()

"Base stuff

"Stops highlights in searches
set nohlsearch

"Searches incrementally
set incsearch

"Sets default clipboard to system clipboard
set clipboard="unnamedplus"
vnoremap <C-c> "+y
map <C-p> "+p

"Auto Intents
set smartindent

"Defaults to the Unix File format
set fileformat="unix"

"Sets encoding to UTF-8
set encoding=utf-8

"Turns on line numbering
set number

"Turns on autocompletion. CTRL+n to activate
set wildmode=longest,list,full

"New tab aliased to CTRL+t
nnoremap <silent> <C-t> :tabnew<CR>

"Helps if using with Windows/NT and GNU+Linux
"set nocompatible

"Keeps buffers open
set hidden

"Turns off error bells
set noerrorbells

"Scolls early
set scrolloff=6

"Sets colorscheme to gruvbox
"colorscheme gruvbox

"Turns on syntax highlighting
syntax on
