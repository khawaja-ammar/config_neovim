return {
  'williamboman/mason.nvim',
  event = 'VeryLazy',
  dependencies = {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup({
      ui = {
        icons = {
          package_installed = '✓',
          package_pending = '➜',
          package_uninstalled = '✗',
        },
      },
    })

    require('mason-tool-installer').setup({
      auto_update = true,
      ensure_installed = {
        -- LSP
        -- 'sqls',
        'tailwindcss',

        'astro',

        'lua_ls',
        'tsserver',
        'pyright',
        'gopls',

        -- Formatters + Linters
        -- 'biome',

        -- Formatters
        'beautysh',
        'sql-formatter',
        'stylua',
        'prettierd',
        'prettier',
        'black',
        'isort',

        -- Linters
        'eslint_d',
        'pylint',
      },
    })
    vim.api.nvim_command('MasonToolsUpdate')
  end,
}
