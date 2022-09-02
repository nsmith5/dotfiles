local lspconfig = require('lspconfig')
local util = require('lspconfig/util')

lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    on_attach = function()
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
    end,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
            },
            staticcheck = true,
        },
    },
}
