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
      ensure_installed = {
        -- Formatters
        'beautysh',
        'sql-formatter',
        'stylua',
        'prettierd',
        'prettier',
        'black',
        'isort',
        -- Linters
        -- 'biome',
        'eslint_d',
        'pylint',
        -- LSP
        -- 'sqls',
        'tailwindcss',

        'astro',

        'lua_ls',
        'tsserver',
        'pyright',
        'gopls',
      },
    })
    vim.api.nvim_command('MasonToolsUpdate')
  end,
}
