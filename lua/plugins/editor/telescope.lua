-- See `:help telescope` and `:help telescope.setup()`
return {
  {
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
      local telescope = require("telescope")
      telescope.load_extension('fzf')

      telescope.setup({
        pickers = {
          find_files = {
            find_command = {'rg', '--files', '--iglob', '!.git', '--hidden'},
          }
        },
        file_ignore_patterns = { "node_modules" },
      })

      -- See `:help telescope.builtin`
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Project Files' })
      vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = '[P]roject Files Telescope' })
      vim.keymap.set('n', '<leader>ps', builtin.live_grep, { desc = '[P]roject Search (Grep) Telescope' })

      -- require("which-key").register({
      --   p = {
      --     name = "Project",
      --     f = {"Project Files"},
      --     s = {"Project Search (Grep)"},
      --   }
      -- }, { prefix = "<leader>" })
    end
  },
  {
    'nvim-telescope/telescope-ui-select.nvim',
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {
            }
          }
        }
      }
      require("telescope").load_extension("ui-select")
    end
  }
}
-- NOTE:
-- This video has loads of great telescope extensions
-- https://www.youtube.com/watch?v=u_OORAL_xSM
