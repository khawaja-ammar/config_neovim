return {
  require('plugins/lsp/mason'),
  require('plugins/lsp/lsp-config'),
  require('plugins/lsp/lsp-autocompletions'),
  -- require('plugins/lsp/lsp-config-from-scratch'),
  -- require('plugins/lsp/lsp-zero'),
  require('plugins/lsp/formatter-conform'),
  require('plugins/lsp/linter-nvim-lint'),
}
