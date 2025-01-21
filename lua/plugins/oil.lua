return {
    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { { "echasnovski/mini.icons", opts = {} } },
        config = function()
            require("config.oil")
        end,
    },
}
