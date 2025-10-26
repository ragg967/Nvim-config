return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.ruff,
				null_ls.builtins.formatting.clangd,
				null_ls.builtins.formatting.taplo,
				null_ls.builtins.formatting.zls,
				null_ls.nuiltins.diagnostics.eslint_d,
				null_ls.nuiltins.diagnostics.ruff,
			},
		})
	end,
}
