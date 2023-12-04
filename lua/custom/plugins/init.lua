-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

    {
        "max397574/better-escape.nvim",
        event = "InsertEnter",
        config = function()
            require("better_escape").setup()
        end,
    },

    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {},
    },

    {
        "rust-lang/rust.vim",
        ft = "rust",
        init = function()
            vim.g.rustfmt_autosave = 1
        end,
    },

    -- {
    --     "stevearc/oil.nvim",
    --     opts = {},
    --     lazy = false,
    --     -- Optional dependencies
    --     dependencies = { "nvim-tree/nvim-web-devicons" },
    --     config = function()
    --         require("oil").setup()
    --     end,
    -- },

    "tpope/vim-surround",
    "tpope/vim-unimpaired",
}
