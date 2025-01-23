return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"echasnovski/mini.nvim",
			version = "*",
			config = function()
				require("mini.icons").setup()
			end,
		},
		opts = {
			options = {
				theme = "catppuccin",
			},
		},
	},
}
