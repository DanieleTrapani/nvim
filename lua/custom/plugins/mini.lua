return {
  {
    'echasnovski/mini.move',
    version = '*',
    config = function()
      require('mini.move').setup {
        mappings = {

          line_down = '<M-Down>',
          line_up = '<M-Up>',
        },
      }
    end,
  },
}
