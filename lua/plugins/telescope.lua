return {
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.git_files, { noremap = true, silent = true })
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
  },
  { 
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
    config = function()
      require("telescope").load_extension('fzf')
    end
  },
}
