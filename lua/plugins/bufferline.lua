return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		opts = {
			-- your options go here
		},
		keys = (function()
			local ks = {}
			for i = 1, 9 do
				ks[#ks + 1] =
					{ "<leader>" .. i, "<cmd>BufferLineGoToBuffer " .. i .. "<CR>", desc = "Go to buffer " .. i }
			end
			ks[#ks + 1] = { "<leader>0", "<cmd>BufferLineGoToBuffer 10<CR>", desc = "Go to buffer 10" }
			return ks
		end)(),
	},
}
