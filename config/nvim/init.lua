require('plugins')
require('keyset')
require('lsp')
require('completions')

vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 10
vim.opt.relativenumber = true

-- compeletion
vim.opt.completeopt = {
    "menu",
    "menuone",
    "noselect",
}

-- colorscheme
vim.g.catppuccin_flavour = "frappe" -- latte, frappe, macchiato, mocha

require("catppuccin").setup()

vim.cmd [[colorscheme catppuccin]]

--treesitter config
require('nvim-treesitter.configs').setup({
  ensure_installed = 'all',
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
  },
})
