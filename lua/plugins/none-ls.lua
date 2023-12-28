-- Formatting and linting
return {
	"nvimtools/none-ls.nvim",

	config = function()
		local null_ls = require("null_ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.pint, -- for laravel php
				null_ls.builtins.diagnostics.phpcs,
				null_ls.builtins.diagnostics.eslint_d,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.markdownlint,
				null_ls.builtins.completion.cspell,
			},
		})

		vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, { desc = "Formatting a text file using LSP" })
	end,
}
