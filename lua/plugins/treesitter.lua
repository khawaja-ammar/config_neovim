return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "diff",
        "dockerfile",
        "html",
        "lua",
        "luadoc",
        "javascript",
        "jsdoc",
        "typescript",
        "tsx",
        "astro",
        "css",
        "gitignore",
        "go",
        "json",
        "python",
        "rust",
        "sql",
        "regex",
        "markdown",
        "markdown_inline",
        "regex",
        "yaml",
      },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>"
        }
      }
    })
  end
}
