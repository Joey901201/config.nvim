return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			{
				"folke/lazydev.nvim",
				ft = "lua",
				opts = {
					library = {
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
			{
				"j-hui/fidget.nvim",
				opts = {
					notification = {
						window = {
							winblend = 0,
						},
					},
				},
			},
			{
				"stevearc/conform.nvim",
				keys = {
					{
						"<leader>cf",
						function()
							require("comform").format({ formatters = { "injected" }, timeout_ms = 3000 })
						end,
						mode = { "n", "v" },
						desc = "Format Injected Langs",
					},
				},
				opts = {
					formatters_by_ft = {
						lua = { "stylua" },
					},
				},
			},
		},
		opts = {
			diagnostics = {
				severity_sort = true,
			},
			inlay_hints = {
				enabled = true,
			},
		},
		config = function()
			require("config.lsp")
		end,
	},
}
