require("mason").setup()
require("mason-lspconfig").setup(
    {
        ensure_installed = {
            "clangd",
            "bashls",
            "gopls",
            "lua_ls",
            "pyright",
            "rust_analyzer",
        },
        handlers = {
            function(server_name)
                require("lspconfig")[server_name].setup {}
            end,
        }
    }
)

--vim.api.nvim_create_autocmd("LspAttach", {
 --   callback = function(args)
