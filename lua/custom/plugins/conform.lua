return {
  'stevearc/conform.nvim',
  opts = {},

  config = function()
    require('conform').setup {
      formatters_by_ft = {
        go = { 'gofmt' },
        lua = { 'stylua' },
        ruby = { 'rubyfmt' },
        rust = { 'rustfmt' },
        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        php = { 'pretty-php' },
        python = { 'autopep8' },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
