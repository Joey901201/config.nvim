return {
	{
		"neovim/nvim-lspconfig",
		event = { "BufReadPost", "BufWritePost", "BufNewFile" },
		dependencies = {
			"mason.nvim",
			"blink.cmp",
			{
				"williamboman/mason-lspconfig.nvim",
				opts = {
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
							require("lspconfig")[server_name].setup({
								capabilities = require("blink.cmp").get_lsp_capabilities(),
							})
						end,
					},
				},
			},
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
		},

		config = function()
			vim.api.nvim_create_autocmd("LspAttach", {
                -- stylua: ignore
				callback = function(args)
                    local map = vim.keymap.set
				    map("n", "gd", function() Snacks.picker.lsp_definitions() end, { buffer = args.buf, desc = "[g]oto [d]efinition" })
					map("n", "gD", vim.lsp.buf.declaration, { buffer = args.buf, desc = "[g]oto [D]eclaration" })
					map("n", "gi", function() Snacks.picker.lsp_implementations() end, { buffer = args.buf, desc = "[g]oto [i]mplementation" })
                    map("n", "gr", function() Snacks.picker.lsp_references() end, { buffer = args.buf, nowait = true, desc = "[g]oto [r]eferences" })
                    map("n", "gt", function() Snacks.picker.lsp_type_definitions() end, { buffer = args.buf, desc = "[g]oto [t]ype definition" })
					map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { buffer = args.buf, desc = "[c]ode [a]ction" })
					map("n", "<leader>rn", vim.lsp.buf.rename, { buffer = args.buf, desc = "[r]e[n]ame" })
                    map("i", "<C-k>", vim.lsp.buf.signature_help, { buffer = args.buf, desc = "signature help" })
				end,
			})
		end,
	},
}
