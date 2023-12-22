return {
  "kdheepak/lazygit.nvim",
  dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").load_extension("lazygit")
    vim.keymap.set('n', '<leader>gg', ':LazyGitCurrentFile<CR>', { noremap = true, silent = true })
    require("which-key").register({
      g = {
        name = "Git",
        g = {"Open LazyGit"},
      }
    }, { prefix = "<leader>" })
  end
}
