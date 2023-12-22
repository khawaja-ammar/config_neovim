return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  -- cmd = { "TodoTrouble", "TodoTelescope" },
  -- event = "LazyFile",
  -- config = true,
  config = function()
    require("todo-comments").setup()
    -- keys = {
    --   { "]t", function() require("todo-comments").jump_next() end, desc = "Next todo comment" },
    --   { "[t", function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },
    --   -- { "<leader>xt", "<cmd>TodoTrouble<cr>", desc = "Todo (Trouble)" },
    --   -- { "<leader>xT", "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme (Trouble)" },
    --   -- { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Todo" },
    --   -- { "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<cr>", desc = "Todo/Fix/Fixme" },
    -- },
  end
}

