inoremap jk <ESC>
vnoremap jk <ESC>
set number

let base16colorspace=256
set termguicolors
set tabstop=4

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'danielwe/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

let g:airline_theme='base16_atelierdune'
colorscheme base16-atelier-dune
