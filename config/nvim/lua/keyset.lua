-- Escape is far away, just wiggle jk to escape instead
vim.keymap.set('i', 'kj', '<ESC>')
vim.keymap.set('i', 'jk', '<ESC>')
vim.keymap.set('v', 'kj', '<ESC>')
vim.keymap.set('v', 'jk', '<ESC>')

-- Split navigation
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')

-- Toggle Nerdtree w/ CTRL+\ like in vscode
vim.keymap.set('n', '<C-\\>', ':NERDTreeToggle<CR>', { remap = true })
