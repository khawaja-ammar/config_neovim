return {
   require('plugins/lsp/lspconfig'),
   -- require('plugins/lsp/formatting-conform.nvim'),
   -- require('plugins/lsp/linting-nvim-lint'),
}





-- return {
--   'neovim/nvim-lspconfig',
--   event = "VeryLazy",
--   dependencies = {
--     'williamboman/mason.nvim',
--     'williamboman/mason-lspconfig.nvim',
--     -- Useful status updates for LSP
--     -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
--     { 'j-hui/fidget.nvim', opts = {} },
--
--     -- Additional lua configuration, makes nvim stuff amazing!
--     -- 'folke/neodev.nvim',
--   },
--   config = function()
--     require("mason").setup({
--       ui = {
--         icons = {
--           package_installed = "✓",
--           package_pending = "➜",
--           package_uninstalled = "✗"
--         }}
--     })
--
--     require("mason-lspconfig").setup({
--       ensure_installed = { "lua_ls" }
--     })
--
--     -- require('neodev').setup()
--
--     local lspconfig = require("lspconfig")
--     lspconfig.lua_ls.setup({})
--
--     vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
--     vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
--     vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction"})
--   end
-- }

