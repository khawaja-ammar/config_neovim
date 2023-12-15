return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    vim.keymap.set('n', '<C-b>', ':Neotree filesystem action=show left reveal toggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>bb', ':Neotree filesystem action=show left reveal toggle<CR>', { noremap = true, silent = true })
    vim.keymap.set('n', '<leader>bf', ':Neotree filesystem reveal float<CR>', { noremap = true, silent = true })

    require("which-key").register({
      b = {
        name = "FileTree",
        b = {"Toggle Filetree"},
        f = {"Float Filetree"}
      }
    }, { prefix = "<leader>" })

  end
}
