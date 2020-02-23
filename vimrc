"Key mappings
inoremap kj <ESC>
inoremap jk <ESC>
vnoremap kj <ESC>

"Split navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

nmap <silent> <C-\> :NERDTreeToggle<CR>

"Editor details
set relativenumber
set tabstop=4
set expandtab
set shiftwidth=4
set scrolloff=10

"Plugged plugins
call plug#begin('~/.vim/plugged')

Plug 'danielwe/base16-vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Language Support
Plug 'JuliaEditorSupport/julia-vim'
Plug 'fatih/vim-go'
Plug 'mrk21/yaml-vim'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'w0rp/ale' "General purpose linter

call plug#end()

"Color scheme details
let base16colorspace=256
set termguicolors
let g:airline_theme='base16'
colorscheme base16-onedark

"Undo with history (past file close)
set undodir=~/.vimdid
set undofile
