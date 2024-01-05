vim.opt.updatetime = 250
vim.opt.timeout = true
vim.opt.timeoutlen = 300

vim.opt.wildmenu = true
vim.opt.wildoptions = 'fuzzy'
vim.opt.wildmode = 'list:longest,full'

-- Appearance
vim.opt.termguicolors = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.signcolumn = 'yes'
vim.opt.completeopt = 'menuone,noinsert,noselect'
vim.api.nvim_create_autocmd('ColorScheme', {
  command = [[highlight CursorLine guibg=#171B22 ]],
})
vim.opt.cursorline = true
-- vim.opt.colorcolumn = "80"
-- vim.opt.fillchars = { eob = '~' }

-- Tab / Indentation
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.autoindent = true
vim.opt.cindent = true
vim.opt.wrap = false

-- Search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Behaviour
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv('HOME') .. '/.vim/undodir'
vim.opt.undofile = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.isfname:append('@-@')

-- vim.opt.iskeyword:append("-")

vim.opt.scrolloff = 8

vim.opt.spell = true
vim.opt.spelloptions = 'camel'
