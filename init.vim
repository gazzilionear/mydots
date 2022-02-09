"VM, 12/21/21


"vim-plug stuff, make sure you have it installed! Found at: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged/')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gruvbox-community/gruvbox'
Plug 'vim-syntastic/syntastic'
Plug 'luochen1990/rainbow'
Plug 'vim-syntastic/syntastic'

Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'bfrg/vim-cpp-modern'

call plug#end()

"Base stuff

"Syntax files from config folder
set runtimepath+=~/.config/nvim/syntax

""older, vim-cpp-enhanced-highlight
"let g:cpp_class_scope_highlight = 1
"let g:cpp_member_variable_highlight = 1
"let g:cpp_class_decl_highlight = 1
"let g:cpp_posix_standard = 1
"let g:cpp_experimental_simple_template_highlight = 1

"Newer, vim-cpp-modern
let g:cpp_attributes_highlight = 1
let g:cpp_member_highlight = 1
let g:cpp_simple_highlight = 1

"JFlex syntax highlighting
augroup filetype                                                     
  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex         
augroup END                                                          
au Syntax jflex    so ~/.vim/syntax/jflex.vim 

"Turns on syntax highlighting
syntax on

"Stops highlights in searches
set nohlsearch

"Searches incrementally
set incsearch

"Sets default clipboard to system clipboard
set clipboard="unnamedplus"
vnoremap <C-c> "+y
map <C-p> "+p

"Better Intents
set autoindent
set smartindent
set softtabstop=3
set tabstop=3
set shiftwidth=3
set expandtab

"Defaults to the Unix File format
set fileformat="unix"

"Sets encoding to UTF-8
set encoding=utf-8

"Line wrap
set wrap

"Trims extra whitespace
function! Trim()
	let l:save = winsaveview()
	keeppatterns %s/\s\+$//e
	call winrestview(l:save)
endfun
command! -nargs=0 Trim call Trim()

"Turns on line numbering
set number

"Stops backups
set nobackup
set nowritebackup

"No delays
set updatetime=300

"c-space to trigger completion
if has('nvim')
	inoremap <silent><expr> <c-space> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

"Enables mouse support
set mouse=a
if has('mouse_sgr')
    " sgr mouse is better but not every term supports it
    set ttymouse=sgr
endif

"Symbol and references highlighted when holding the cursor
"autocmd CursorHold * silent call CocActionAsync('hightlight')

"Symbol rename
nmap <leader>rn <Plug>(coc-rename)

"Shows location of cursor in bottom right
set ruler

"Turns on autocompletion. CTRL+n to activate
set wildmode=longest,list,full

"New tab aliased to CTRL+t
nnoremap <silent> <C-t> :tabnew<CR>

"Helps if using with Windows/NT and GNU+Linux at the same time
"set nocompatible

"Keeps buffers open
set hidden

"Turns off error bells
set noerrorbells

"Scolls early
set scrolloff=6

"Sets colorscheme to gruvbox
"colorscheme gruvbox

"Installs coc-prettier
command! -nargs=0 Format :call CocActionAsync('format')
"command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

"JFlex syntax highlighting
"augroup filetype                                                     
"  au BufRead,BufNewFile *.flex,*.jflex    set filetype=jflex         
"augroup END                                                          
"au Syntax jflex    so ~/.vim/syntax/jflex.vim 

"Turns on syntax highlighting
"syntax on
