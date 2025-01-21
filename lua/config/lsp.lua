require("mason").setup()
require("mason-lspconfig").setup {
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
    },
    automatic_installation = false,
}

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end,
})

require("conform").setup({
    formatters_by_ft = {

    }
})

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})
