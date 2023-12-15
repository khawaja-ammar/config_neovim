return {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { noremap = true, silent = true })
    
    require("which-key").register({
      f = {
        name = "Find",
        f = {"Find File"},
        g = {"Find Item (Grep)"},
      }
    }, { prefix = "<leader>" })
  end
}
