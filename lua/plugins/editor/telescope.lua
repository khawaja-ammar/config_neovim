-- See `:help telescope` and `:help telescope.setup()`
return {
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    event = 'VeryLazy',
    dependencies = {
      'nvim-lua/plenary.nvim',
      {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable('make') == 1
        end,
      },
    },
    config = function()
      local telescope = require('telescope')
      telescope.load_extension('fzf')

      telescope.setup({
        pickers = {
          find_files = {
            find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden' },
          },
        },
        file_ignore_patterns = { 'node_modules' },
      })

      -- See `:help telescope.builtin`
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Project Files' })
      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[P]roject [F]iles Telescope' })
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = '[P]roject [S]earch (Grep) Telescope' })

      vim.keymap.set('n', '<leader>gf', builtin.git_files, { desc = 'Search [G]it [F]iles' })
      vim.keymap.set('n', '<leader>gs', builtin.git_status, { desc = '[G]it [S]tatus' })

      vim.keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
      -- vim.keymap.set('n', '<leader>vh', builtin.help_tags, { desc = '[V]iew [H]elp' }) This is an alt command
    end,
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    event = 'VeryLazy',
    config = function()
      require('telescope').setup({
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown({}),
          },
        },
      })
      require('telescope').load_extension('ui-select')
    end,
  },
}
-- TODO:
-- This video has loads of great telescope extensions
-- https://www.youtube.com/watch?v=u_OORAL_xSM
