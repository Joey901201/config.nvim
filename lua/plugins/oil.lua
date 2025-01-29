return {
	{
		"stevearc/oil.nvim",
		dependencies = {
			"mini.icons",
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
		keys = {
			{ "-", "<CMD>Oil<CR>", desc = "Open parent directory" },
		},
	},
}
