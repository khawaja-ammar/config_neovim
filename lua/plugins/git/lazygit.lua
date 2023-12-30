return {
  "kdheepak/lazygit.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("lazygit")
    vim.keymap.set('n', '<leader>gg', ':LazyGitCurrentFile<CR>', { desc = "[G]it [G]ui (LazyGit)" })
  end
}
