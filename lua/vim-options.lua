-- Appearance
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.opt.cursorline = true
vim.api.nvim_create_autocmd('ColorScheme', {
  command = [[highlight CursorLine guibg=#171B22 ]]
})
-- vim.opt.colorcolumn = "80"

-- Tab / Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.wrap = false

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Behaviour
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.isfname:append("@-@")

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
