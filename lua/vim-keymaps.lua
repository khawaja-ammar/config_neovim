vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Toggle wrap
vim.keymap.set('n', '<A-z>', ':set wrap!<CR>', { noremap = true, silent = true })

-- Commands to switch neovim panes
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

-- TODO: 
-- Add Alt + Up and Alt + Down to shift line and blocks
-- Add shift + tab moves back 1 tab
