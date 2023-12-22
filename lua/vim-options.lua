vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true
vim.opt.breakindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Github Theme color: #171B22
vim.opt.cursorline = true
vim.api.nvim_create_autocmd('ColorScheme', {
  command = [[highlight CursorLine guibg=#171B22 ]]
})
-- vim.opt.colorcolumn = "80"

vim.opt.completeopt = 'menuone,noselect'

vim.g.mapleader = " "
vim.g.maplocalleader = " "
