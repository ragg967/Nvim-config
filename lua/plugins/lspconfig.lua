return {
	"neovim/nvim-lspconfig",
	config = function()
		local lsps = { "lua_ls", "clangd", "pyright", "taplo", "zls" }

		for _, lsp in ipairs(lsps) do
			vim.lsp.enable(lsp)
		end
	end
}
