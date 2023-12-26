return {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  command = "Hardtime",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    disable_mouse = "false",
    restriction_mode = "hint",
    restricted_keys = {
      -- ["h"] = { "n", "x" },
      -- ["j"] = { "n", "x" },
      -- ["k"] = { "n", "x" },
      -- ["l"] = { "n", "x" },
      -- ["-"] = { "n", "x" },
      -- ["+"] = { "n", "x" },
      -- ["gj"] = { "n", "x" },
      -- ["gk"] = { "n", "x" },
      -- ["<CR>"] = { "n", "x" },
      -- ["<C-M>"] = { "n", "x" },
      -- ["<C-N>"] = { "n", "x" },
      ["<C-P>"] = {},
    },
    disabled_keys = {
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
  }
}
