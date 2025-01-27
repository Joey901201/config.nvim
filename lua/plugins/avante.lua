return {
	{
		"yetone/avante.nvim",
		event = "VeryLazy",
		lazy = true,
		version = "*",
		opts = {},
		build = "make",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		},
	},
}
