return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            {
                "folke/lazydev.nvim",
                ft = "lua",
                opts = {
                    library = {
                        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
                    },
                },
            },
            { "j-hui/fidget.nvim", opts = {} },
            { "stevearc/conform.nvim", opts = {} }
        },
        config = function()
            require("config.lsp")
        end,
    },
}
