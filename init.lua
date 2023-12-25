-- `:help lazy.nvim.txt` for more info
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local lazy_opts = {
  install = {
    theme = "github_dark_default",
  },
  change_detection = {
    enabled = false,
  },
}

require("vim-options")
require("vim-globals")
require("lazy").setup("plugins", lazy_opts)
require("vim-keymaps")
