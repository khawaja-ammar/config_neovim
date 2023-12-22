-- See `:help telescope` and `:help telescope.setup()`
return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      cond = function()
        return vim.fn.executable 'make' == 1
      end,
    },
  },
  config = function()
    require("telescope").load_extension('fzf')
    -- See `:help telescope.builtin`
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>pf', builtin.find_files, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ps', builtin.live_grep, { noremap = true, silent = true })

    require("which-key").register({
      p = {
        name = "Project",
        f = {"Project Files"},
        s = {"Project Search (Grep)"},
      }
    }, { prefix = "<leader>" })
  end
}
-- NOTE:
-- This video has loads of great telescope extensions
-- https://www.youtube.com/watch?v=u_OORAL_xSM
