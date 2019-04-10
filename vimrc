"Key mappings
inoremap jk <ESC>
vnoremap jk <ESC>
nmap <silent> <C-\> :NERDTreeToggle<CR>

"Editor details
set number
set tabstop=4
set shiftwidth=4

"Plugged plugins
call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'danielwe/base16-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'mrk21/yaml-vim'

call plug#end()

"Color scheme details
let base16colorspace=256
set termguicolors
let g:airline_theme='base16'
colorscheme base16-onedark
