return {
  'hrsh7th/cmp-cmdline',
  event = 'VeryLazy',
  config = function()
    local cmp = require('cmp')

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      -- window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
      -- },
      -- completion = {
      --   completeopt = 'menu,menuone,noinsert',
      -- },
      sources = cmp.config.sources({
        { name = 'path' },
      }, {
        {
          name = 'cmdline',
          option = {
            ignore_cmds = { 'Man', '!' },
          },
        },
      }),
    })
  end,
}
