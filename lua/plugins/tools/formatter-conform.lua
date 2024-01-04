return {
  'stevearc/conform.nvim',
  event = 'VeryLazy',
  config = function()
    local config_formatters_path = os.getenv('HOME') .. '/.config/nvim/config_tools/config_formatters/'

    require('conform').setup({
      formatters_by_ft = {
        -- DSLs
        markdown = { { 'prettierd', 'prettier' } },

        bash = { 'beautysh' },
        zsh = { 'beautysh' },

        sql = { 'sql_formatter' },

        json = { { 'prettierd', 'prettier' } },
        graphql = { { 'prettierd', 'prettier' } },

        html = { { 'prettierd', 'prettier' } },

        css = { { 'prettierd', 'prettier' } },
        scss = { { 'prettierd', 'prettier' } },
        -- GPPLs
        lua = { 'stylua' },

        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },

        python = { 'isort', 'black' },
        -- DSLs embedded with GPPLs
        javascriptreact = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        astro = { { 'prettierd', 'prettier' } },
      },

      formatters = {
        sql_formatter = {
          command = 'sql-formatter',
          args = {
            '-c',
            (config_formatters_path .. 'sql.json'),
          },
        },
      },

      vim.api.nvim_create_user_command('Format', function()
        require('conform').format({
          timeout_ms = 500,
          async = false,
          lsp_fallback = true,
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
