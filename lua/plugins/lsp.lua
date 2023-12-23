return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "tsserver", "lua_ls", "intelephense", "html", "cssls", "tailwindcss", "emmet_ls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local on_attach = require("lua.plugins.lsp").on_attach
			local capabilities = require("lua.plugins.lsp").capabilities

			local servers = { "html", "cssls", "intelephense", "emmet_ls", "tailwindcss", "tsserver" }
			local lspconfig = require("lspconfig")

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					on_attach = on_attach,
					capabilities = capabilities,
				})
			end

			lspconfig.lua_ls.setup({})
			lspconfig.tsserver.setup({})
			lspconfig.cssls.setup({})
			lspconfig.tailwindcss.setup({})
			lspconfig.emmet_ls.setup({})
			lspconfig.html.setup({})
			lspconfig.intelephense.setup({
				init_options = {
					globalStoragePath = "/usr/bin/intelephense",
					licenseKey = "~/intelephense/license.txt",
				},
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
