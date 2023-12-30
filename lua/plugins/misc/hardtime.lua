return {
  'm4xshen/hardtime.nvim',
  event = 'VeryLazy',
  command = 'Hardtime',
  dependencies = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' },
  opts = {
    disable_mouse = 'false',
    restriction_mode = 'hint',
    restricted_keys = {
      ['h'] = {},
      ['j'] = {},
      ['k'] = {},
      ['l'] = {},
      ['-'] = {},
      ['+'] = {},
      ['gj'] = {},
      ['gk'] = {},
      ['<CR>'] = {},
      ['<C-M>'] = {},
      ['<C-N>'] = {},
      ['<C-P>'] = {},
    },
    -- hints = {
    --   ["<Up>"] = {
    --     message = function()
    --       return "Use k instead of <Up>"
    --     end,
    --     length = 1,
    --   },
    --
    --   ["<Down>"] = {
    --     message = function()
    --       return "Use j instead of <Down>"
    --     end,
    --     length = 1,
    --   }
    -- },
    disabled_keys = {
      ['<Up>'] = {},
      ['<Down>'] = {},
      ['<Left>'] = {},
      ['<Right>'] = {},
    },
  },
}
