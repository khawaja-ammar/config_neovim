return {
  'williamboman/mason.nvim',
  event = 'VeryLazy',
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
    vim.api.nvim_command('MasonUpdate')
  end,
}
