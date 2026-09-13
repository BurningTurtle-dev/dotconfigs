return {
	{
		"williamboman/mason.nvim",
		config = true,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		opts = {
			ensure_installed = {
				"clangd",
				"basedpyright",
				"bashls",
				"lua_ls",
				"jsonls",
				"yamlls",
				"taplo",
				"lemminx",
				"marksman",
				"rust_analyzer",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason-lspconfig.nvim" },
		config = function()
			local servers = {
				"clangd",
				"basedpyright",
				"bashls",
				"lua_ls",
				"jsonls",
				"yamlls",
				"taplo",
				"lemminx",
				"marksman",
				"rust_analyzer",
			}

			-- for nix, only on nix machines
			if vim.fn.executable("nixd") == 1 then
				table.insert(servers, "nixd")
			end

			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			for _, server in ipairs(servers) do
				vim.lsp.config(server, {})
			end

			vim.lsp.enable(servers)

			vim.lsp.inlay_hint.enable(true)
		end,
	},
}
