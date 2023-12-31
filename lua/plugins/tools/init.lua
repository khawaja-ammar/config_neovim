return {
  require('plugins/tools/mason'),

  -- LSP
  require('plugins/tools/lsp-config'),
  require('plugins/tools/lsp-autocompletions'),
  -- require('plugins/tools/lsp-config-from-scratch'),
  -- require('plugins/tools/lsp-zero'),

  -- Linter
  require('plugins/tools/linter-nvim-lint'),

  -- Formatter
  require('plugins/tools/formatter-conform'),

  -- DAP
}
