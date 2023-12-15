return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua", "javascript", "typescript", "tsx", "astro", "css", "gitignore", "go","html", "json", "python","rust", "sql"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}