local lspconfig = require('lspconfig')
local util = require('lspconfig/util')

local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())

lspconfig.gopls.setup {
    cmd = {"gopls", "serve"},
    capabilities = capabilities,
    filetypes = {"go", "gomod"},
    root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    on_attach = function()
        -- Open documenation
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = 0 })
        -- Go to definition 
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = 0})
        -- Go to type definition 
        vim.keymap.set('n', 'gtd', vim.lsp.buf.type_definition, { buffer = 0 })
        -- Go to implementation
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = 0 })
        -- Go to all references 
        vim.keymap.set('n', 'gr', "<cmd>Telescope lsp_references<cr>", { buffer = 0 })
        -- Go to next error (go to next diagnostic)
        vim.keymap.set('n', 'gdn', vim.diagnostic.goto_next, { buffer = 0 })
        -- Go to previous error (go to previous diagnostic)
        vim.keymap.set('n', 'gdp', vim.diagnostic.goto_prev, { buffer = 0 })
        -- Go to diagnostic list
        vim.keymap.set('n', 'gdl', "<cmd>Telescope diagnostics<cr>", { buffer = 0 })
        -- Go rename everything
        vim.keymap.set('n', 'grn', vim.lsp.buf.rename, { buffer = 0 })

        --Format on save
        vim.api.nvim_create_autocmd({"BufWritePre"}, {
            pattern = {"*.go"},
            callback = vim.lsp.buf.formatting_sync,
        })

        -- Run all code actions?
        --[[
        vim.api.nvim_create_autocmd({"BufWritePre"}, {
            pattern = {"*.go"},
            callback = vim.lsp.buf.code_action,
        })
        --]]
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

lspconfig.terraformls.setup {
    on_attach = function()
        vim.api.nvim_create_autocmd({"BufWritePre"}, {
            pattern = {"*.tf", "*.tfvars"},
            callback = vim.lsp.buf.formatting_sync,
        })
    end,
}
