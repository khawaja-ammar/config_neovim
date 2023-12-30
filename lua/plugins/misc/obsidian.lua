return {
  "epwalsh/obsidian.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  cond = function ()
    -- if path === obsidian vault then return true  
    return false
  end,
  event = "VeryLazy",
}
