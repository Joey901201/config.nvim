return {
	{
		"folke/snacks.nvim",
		priority = 100,
		opts = {
			bigfile = { enabled = true },
			indent = { enabled = true },
			input = { enabled = true },
			picker = { enabled = true },
		},

        -- stylua: ignore
        keys = {
            { "<leader>ff", function() Snacks.picker.files() end, desc = "[f]ind [f]iles" },
            { "<leader>gf", function() Snacks.picker.git_files() end, desc = "[g]it [f]iles" },
            { "<leader>fh", function() Snacks.picker.help() end, desc = "[f]ind [h]elp" },
            { "<leader>fg", function() Snacks.picker.grep() end, desc = "[f]ind [g]rep" },
            { "<leader>fw", function() Snacks.picker.grep_word() end, desc = "[f]ind [w]ord" },
        },
	},
}
