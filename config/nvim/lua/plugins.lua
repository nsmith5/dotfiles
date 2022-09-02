local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Telescope is fuzzy finder magic
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

-- LSP (Language server protocol) setup
Plug 'neovim/nvim-lspconfig'

-- Random plugins
Plug 'preservim/nerdtree'
Plug 'RRethy/nvim-base16'

vim.call('plug#end')
