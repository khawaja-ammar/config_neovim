vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Toggle wrap
vim.keymap.set('n', '<A-z>', ':set wrap!<CR>', { noremap = true, silent = true })

-- Commands to switch neovim panes
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', { noremap = true, silent = true })

-- TODO: Add Alt + Up and Alt + Down to shift line and blocks

require('which-key').register {
--   ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
--   ['<leader>d'] = { name = '[D]ocument', _ = 'which_key_ignore' },
  ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
  ['<leader>h'] = { name = 'Git [H]unk', _ = 'which_key_ignore' },
  ['<leader>p'] = { name = '[P]roject', _  = 'which_key_ignore'},
--   ['<leader>r'] = { name = '[R]ename', _ = 'which_key_ignore' },
--   ['<leader>s'] = { name = '[S]earch', _ = 'which_key_ignore' },
  ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
--   ['<leader>w'] = { name = '[W]orkspace', _ = 'which_key_ignore' },
}
-- -- register which-key VISUAL mode
-- require('which-key').register({
--   ['<leader>'] = { name = 'VISUAL <leader>' },
--   ['<leader>h'] = { 'Git [H]unk' },
-- }, { mode = 'v' })
