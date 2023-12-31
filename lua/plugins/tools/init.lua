return {
  require('plugins/tools/mason'),

  -- LSP
  require('plugins/tools/lsp-config'),
  require('plugins/tools/lsp-autocompletions'),

  -- Linter
  require('plugins/tools/linter-nvim-lint'),

  -- Formatter
  require('plugins/tools/formatter-conform'),

  -- DAP
}
