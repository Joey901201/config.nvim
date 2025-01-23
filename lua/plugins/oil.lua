return {
	{
		"stevearc/oil.nvim",
		dependencies = {
			"echasnovski/mini.nvim",
			version = "*",
			config = function()
				require("mini.icons").setup()
			end,
		},
		opts = {
			keymaps = {
				["<C-s>"] = false,
				["<C-h>"] = false,
				["<C-l>"] = false,
				["<C-s>v"] = { "actions.select", opts = { vertical = true } },
				["<C-s>h"] = { "actions.select", opts = { horizontal = true } },
				["<F5>"] = "actions.refresh",
			},
			show_hidden = true,
		},
	},
}
