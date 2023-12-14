vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number relativenumber")
vim.g.mapleader = " "

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


local plugins = {
  -- UI/UX -----------------------------------------------------
  {
    'projekt0n/github-nvim-theme',
    lazy = false,
    priority = 1000,
    config = function()
      require('github-theme').setup()
      vim.cmd('colorscheme github_dark_default')
    end,
  },
  {
    "lukas-reineke/indent-blankline.nvim", main = "ibl",
    config = function()
      require("ibl").setup()
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    requires = { "nvim-tree/nvim-web-devicons", opt = true },
    config = function()
      require("lualine").setup()
    end
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        current_line_blame_formatter = '<author>, <author_time:%d-%m-%Y> - <summary>',
        on_attach = function(bufnr)
          local gs = package.loaded.gitsigns
          vim.keymap.set('n', '<leader>gb', gs.toggle_current_line_blame)
          vim.keymap.set('n', '<leader>gd', gs.preview_hunk)
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
  },
  -- CORE EXT ---------------------------------------------------
  {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set('n', '<C-p>', builtin.find_files, {})
      vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
      
      require("which-key").register({
        f = {
          name = "Find",
          f = {"Find File"},
          g = {"Find Item (Grep)"},
        }
      }, { prefix = "<leader>" })
    end
  },
  {
    "nvim-treesitter/nvim-treesitter", 
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {"lua", "javascript", "typescript", "tsx", "astro", "css", "gitignore", "go","html", "json", "python","rust", "sql"},
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
	      endwise = { enable = true},
      })
    end
  },
  -- CORE:Treesitter Ext ---------------------------------------
  {
    "altermo/ultimate-autopair.nvim", 
    event = {'InsertEnter', 'CmdlineEnter'},
    config = function()
      require("ultimate-autopair").setup()
    end
  }, 
  { "windwp/nvim-ts-autotag" },
  { "RRethy/nvim-treesitter-endwise" },
  { 
    "numToStr/Comment.nvim",
    dependencies = "JoosepAlviste/nvim-ts-context-commentstring",
    lazy = false,
    config = function()
      require("ts_context_commentstring").setup({
        enable_autocmd = false,
      })
      require("Comment").setup({
        pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
        toggler = {
          line = '<C-_>',
          -- block = '<leader>bc',
        },
        opleader = {
          line = '<C-_>',
          -- block = '<leader>bc'
        },
      })
    end
  },
  -- EXT -------------------------------------------------------
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  }, 
  -- INTEGRATIONS ----------------------------------------------
  {
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
  },
}

require("lazy").setup(plugins, {})
