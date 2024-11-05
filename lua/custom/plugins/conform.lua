return {
  'stevearc/conform.nvim',
  opts = {},

  config = function()
    require('conform').setup {
      formatters_by_ft = {
        go = { 'goimports' },
        lua = { 'stylua' },
        ruby = { 'rubocop' },
        rust = { 'rustfmt' },
        javascript = { { 'prettierd', 'prettier' } },
        typescript = { { 'prettierd', 'prettier' } },
        javascriptreact = { { 'prettierd', 'prettier' } },
        typescriptreact = { { 'prettierd', 'prettier' } },
        php = { 'pretty-php' },
        python = { 'autopep8' },
        eruby = { 'htmlbeautifier' },
        cpp = { 'clang-format' },
      },

      format_on_save = {
        timeout_ms = 2500,
        lsp_fallback = true,
      },
    }
  end,
}
