return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    require('conform').setup({
      formatters_by_ft = {
        -- DSLs
        markdown = { { 'prettierd', 'prettier' } },

        bash = { 'beautysh' },
        zsh = { 'beautysh' },

        sql = { 'sql-formatter' },

        json = { { 'prettierd', 'prettier' } },
        graphql = { { 'prettierd', 'prettier' } },

        html = { { 'prettierd', 'prettier' } },

        css = { { 'prettierd', 'prettier' } },
        scss = { { 'prettierd', 'prettier' } },

        -- GPPLs
        lua = { 'stylua' },

        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },

        python = { 'black' },
      },

      vim.api.nvim_create_user_command('Format', function()
        require('conform').format({
          lsp_fallback = true,
          async = false,
          timeout_ms = 500,
        })
      end, { desc = 'Format current buffer' }),

      format_on_save = {
        timeout_ms = 500,
        async = false,
        lsp_fallback = true,
      },
    })
  end,
}
