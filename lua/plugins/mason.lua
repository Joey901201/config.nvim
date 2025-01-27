return {
	{
		"williamboman/mason.nvim",
		cmd = { "Mason", "MasonInstall", "MasonUpdate" },
		build = ":MasonUpdate",
		opts = {},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		dependencies = {
			"mason.nvim",
		},
		opts = {
			ensure_installed = {
				"stylua",
				"shfmt",
			},
		},
	},
}
