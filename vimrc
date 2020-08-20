"Key mappings
inoremap kj <ESC>
inoremap jk <ESC>
vnoremap kj <ESC>

"Split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

"Toggle nerd tree with CTRL+\
nmap <silent> <C-\> :NERDTreeToggle<CR>

"Editor details
set tabstop=4
set expandtab
set shiftwidth=4
set scrolloff=10
set relativenumber

"HTML/CSS/Javascript editor overrides
autocmd FileType html setlocal shiftwidth=2 tabstop=2
autocmd FileType css setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType vue setlocal shiftwidth=2 tabstop=2

"Plugged plugins
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'

"Fuzzy finder
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Language Support
Plug 'fatih/vim-go'
Plug 'w0rp/ale' "General purpose linter

call plug#end()

"Undo with history (past file close)
set undodir=~/.vimdid
set undofile
