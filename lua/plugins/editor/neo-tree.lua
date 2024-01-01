return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<leader>pb', ':Neotree filesystem action=show left reveal toggle<CR>', { desc = '[P]roject [B]ar' })
    vim.keymap.set('n', '<leader>pe', ':Neotree filesystem reveal float<CR>', { desc = '[P]roject [E]xplorer' })
  end,
}
