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
        javascript = { 'deno_fmt' },
        typescript = { 'deno_fmt' },
        javascriptreact = { 'deno_fmt' },
        typescriptreact = { 'deno_fmt' },
        php = { 'pretty-php' },
      },

      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    }
  end,
}
