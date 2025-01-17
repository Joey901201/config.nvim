return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim"
        },
        config = function()
            require("config.lsp")
        end,
    },
}
