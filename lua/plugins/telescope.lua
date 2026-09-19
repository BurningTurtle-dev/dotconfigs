return {
	{
		"nvim-telescope/telescope.nvim",

		dependencies = {
			"nvim-lua/plenary.nvim",
		},

		keys = {
			{
				"/",
				function()
					require("telescope.builtin").current_buffer_fuzzy_find()
				end,
				desc = "Use Telescope instead of default search",
			},
			{
				"<leader>t",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Use Telescope to seach for keyword in filetree",
			},
		},
	},
}
