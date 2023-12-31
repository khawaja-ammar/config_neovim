return {
  'mfussenegger/nvim-lint',
  event = 'VeryLazy',
  config = function()
    local lint = require('lint')

    lint.linters_by_ft = {
      javascript = { 'eslint_d' },
      typescript = { 'eslint_d' },
      javascriptreact = { 'eslint_d' },
      typescriptreact = { 'eslint_d' },

      python = { 'pylint' },
    }

    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })

    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave', 'TextChanged' }, {
      group = lint_augroup,
      callback = function()
        lint.try_lint()
      end,
    })

    vim.keymap.set('n', '<leader>l', function()
      lint.try_lint()
    end, { desc = 'Trigger linting for current file' })

    vim.api.nvim_create_user_command('LintInfo', function()
      local linters = require('lint').get_running()
      if #linters == 0 then
        print('✗ nvim-lint: NO LINTERS RUNNING')
      else
        print('✓ nvim-lint:' .. table.concat(linters, ', '))
      end
    end, { desc = 'List available linter for buffer' })
  end,
}
