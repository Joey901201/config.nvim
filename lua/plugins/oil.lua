return {
    {
        "stevearc/oil.nvim",
        dependencies = { "echasnovski/mini.icons" },
        config = function()
            require("config.oil")
        end,
    },
}
