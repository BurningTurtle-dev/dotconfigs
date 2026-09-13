return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo", "Format" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },

			python = { "ruff_format" },

			javascript = { "prettier" },
			typescript = { "prettier" },
			javascriptreact = { "prettier" },
			typescriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			css = { "prettier" },
			scss = { "prettier" },
			html = { "prettier" },
			markdown = { "prettier" },
			yaml = { "prettier" },

			rust = { "rustfmt" },

			nix = { "nixfmt" },

			c = { "clang_format" },
			cpp = { "clang_format" },

			sh = { "shfmt" },
			bash = { "shfmt" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
	},
	config = function(_, opts)
		require("conform").setup(opts)

		vim.api.nvim_create_user_command("Format", function()
			require("conform").format({ async = true, lsp_fallback = true })
		end, { desc = "Format buffer with conform.nvim" })
	end,
}
