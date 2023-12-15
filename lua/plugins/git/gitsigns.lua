return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup({
      current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>',
      on_attach = function(bufnr)
        local gs = package.loaded.gitsigns
        vim.keymap.set('n', '<leader>gb', gs.toggle_current_line_blame, { noremap = true, silent = true })
        vim.keymap.set('n', '<leader>gd', gs.preview_hunk, { noremap = true, silent = true })
      end
    })
    require("which-key").register({
      g = {
        name = "Git",
        b = {"Git Blame Toggle"},
        d = {"Git Diff"},
      }
    }, { prefix = "<leader>" })
  end
}
