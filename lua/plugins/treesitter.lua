-- See `:help nvim-treesitter`
return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  dependencies = {
    -- 'nvim-treesitter/nvim-treesitter-textobjects',
  },
  config = vim.defer_fn(function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = { 
        "diff", "html", "lua", "luadoc", "javascript", "jsdoc", "typescript", "tsx", "astro", "css",
        "gitignore", "go", "json", "python", "sql", "markdown", "markdown_inline", "vimdoc", "vim"
      },
      auto_install = true,
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
      },
      -- textobjects = {
      --   select = {
      --     enable = true,
      --     lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
      --     keymaps = {
      --       -- You can use the capture groups defined in textobjects.scm
      --       ['aa'] = '@parameter.outer',
      --       ['ia'] = '@parameter.inner',
      --       ['af'] = '@function.outer',
      --       ['if'] = '@function.inner',
      --       ['ac'] = '@class.outer',
      --       ['ic'] = '@class.inner',
      --     },
      --   },
      --   move = {
      --     enable = true,
      --     set_jumps = true, -- whether to set jumps in the jumplist
      --     goto_next_start = {
      --       [']m'] = '@function.outer',
      --       [']]'] = '@class.outer',
      --     },
      --     goto_next_end = {
      --       [']M'] = '@function.outer',
      --       [']['] = '@class.outer',
      --     },
      --     goto_previous_start = {
      --       ['[m'] = '@function.outer',
      --       ['[['] = '@class.outer',
      --     },
      --     goto_previous_end = {
      --       ['[M'] = '@function.outer',
      --       ['[]'] = '@class.outer',
      --     },
      --   },
      --   swap = {
      --     enable = true,
      --     swap_next = {
      --       ['<leader>a'] = '@parameter.inner',
      --     },
      --     swap_previous = {
      --       ['<leader>A'] = '@parameter.inner',
      --     },
      --   },
      -- },
    })
  end, 0)
}


-- -- [[ Configure Treesitter ]]
-- -- See `:help nvim-treesitter`
-- -- Defer Treesitter setup after first render to improve startup time of 'nvim {filename}'
-- vim.defer_fn(function()
--   require('nvim-treesitter.configs').setup {
--     -- Add languages to be installed here that you want installed for treesitter
--     ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash' },
--
--     -- Autoinstall languages that are not installed. Defaults to false (but you can change for yourself!)
--     auto_install = false,
--
--     highlight = { enable = true },
--     indent = { enable = true },
--     incremental_selection = {
--       enable = true,
--       keymaps = {
--         init_selection = '<c-space>',
--         node_incremental = '<c-space>',
--         scope_incremental = '<c-s>',
--         node_decremental = '<M-space>',
--       },
--     },
--     textobjects = {
--       select = {
--         enable = true,
--         lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
--         keymaps = {
--           -- You can use the capture groups defined in textobjects.scm
--           ['aa'] = '@parameter.outer',
--           ['ia'] = '@parameter.inner',
--           ['af'] = '@function.outer',
--           ['if'] = '@function.inner',
--           ['ac'] = '@class.outer',
--           ['ic'] = '@class.inner',
--         },
--       },
--       move = {
--         enable = true,
--         set_jumps = true, -- whether to set jumps in the jumplist
--         goto_next_start = {
--           [']m'] = '@function.outer',
--           [']]'] = '@class.outer',
--         },
--         goto_next_end = {
--           [']M'] = '@function.outer',
--           [']['] = '@class.outer',
--         },
--         goto_previous_start = {
--           ['[m'] = '@function.outer',
--           ['[['] = '@class.outer',
--         },
--         goto_previous_end = {
--           ['[M'] = '@function.outer',
--           ['[]'] = '@class.outer',
--         },
--       },
--       swap = {
--         enable = true,
--         swap_next = {
--           ['<leader>a'] = '@parameter.inner',
--         },
--         swap_previous = {
--           ['<leader>A'] = '@parameter.inner',
--         },
--       },
--     },
--   }
-- end, 0-- See `:help lualine.txt`)
