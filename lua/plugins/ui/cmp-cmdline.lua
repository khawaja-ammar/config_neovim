-- TODO: add cmp-buffer
-- cmp-cmdline / wildcards / wildmenu => autocomplete command line
return {
  'hrsh7th/cmp-cmdline',
  event = 'VeryLazy',
  config = function()
    local cmp = require('cmp')

    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
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
