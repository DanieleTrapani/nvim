return {
    "nvimdev/guard.nvim",
    -- Builtin configuration, optional
    dependencies = {
        "nvimdev/guard-collection",
    },

    config = function()
        local ft = require('guard.filetype')

        -- Assuming you have guard-collection
        -- ft('lang'):fmt('format-tool-1')
        --     :append('format-tool-2')
        --     :env(env_table)
        --     :lint('lint-tool-1')
        --     :extra(extra_args)

        ft('go'):fmt('gofmt')
        ft('rust'):fmt('rustfmt')
        ft('ruby'):fmt('rubocop')
        ft('lua'):fmt('stylua')
        ft('typescript,javascript,typescriptreact,html,css'):fmt('prettier')

        -- Call setup() LAST!
        require('guard').setup({
            -- the only options for the setup function
            fmt_on_save = true,
            -- Use lsp if no formatter was defined for this filetype
            lsp_as_default_formatter = false,
        })
    end
}
