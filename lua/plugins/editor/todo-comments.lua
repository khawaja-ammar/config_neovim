return {
  'folke/todo-comments.nvim',
  event = 'VeryLazy',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('todo-comments').setup()
    vim.keymap.set('n', '<leader>st', ':TodoTelescope<CR>', { desc = '[S]earch [T]odos' })
  end,
}
