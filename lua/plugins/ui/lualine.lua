-- See `:help lualine.txt`
return {
  'nvim-lualine/lualine.nvim',
  config = function()
    require('lualine').setup({
      options = {
        icons_enabled = false,
        component_separators = '|',
        section_separators = '',
      },
    })
  end,
}

-- Aside from the ones builtin lualine, I have:
--     indicator whether the file is marked in harpoon
--     number of lsp references for object under cursor
--     number of break points set
--     recording status
--     clock when full screen
--     chars and lines selected when in visual mode
--     name of the alt file
--     lsp loading progress
--     mixed tabs/spaces
--     git blame message
--

-- NOTE: Func for showing lsp progress in lualine
-- local function lsp_progress()
--   local messages = vim.lsp.util.get_progress_messages()
--   if #messages == 0 then
--     return
--   end
--   local status = {}
--   for _, msg in pairs(messages) do
--     table.insert(status, (msg.percentage or 0) .. "%% " .. (msg.title or ""))
--   end
--   local spinners = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
--   local ms = vim.loop.hrtime() / 1000000
--   local frame = math.floor(ms / 120) % #spinners
--   return table.concat(status, " | ") .. " " .. spinners[frame + 1]
-- end
