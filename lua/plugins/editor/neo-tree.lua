return {
  'nvim-neo-tree/neo-tree.nvim',
  event = 'VeryLazy',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup({
      filesystem = {
        filtered_items = {
          visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_by_name = {
            'node_modules',
            '.git',
          },
        },
      },
    })
    vim.keymap.set('n', '<leader>pb', ':Neotree filesystem action=show left reveal toggle<CR>', { desc = '[P]roject [B]ar' })
    vim.keymap.set('n', '<leader>pe', ':Neotree filesystem reveal float<CR>', { desc = '[P]roject [E]xplorer' })
  end,
}
