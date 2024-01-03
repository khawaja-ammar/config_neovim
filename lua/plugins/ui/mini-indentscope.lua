return {
  'echasnovski/mini.indentscope',
  version = '*',
  config = function()
    require('mini.indentscope').setup({
      draw = {
        delay = 0,
      },
      symbol = '╎',
      options = { try_as_border = true },
    })
  end,
}
