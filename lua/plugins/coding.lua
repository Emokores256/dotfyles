-- Variable renaming under LSP

return {
	"smjonas/inc-rename.nvim",
	config = function()
		require("inc_rename").setup({
			--[[ input_buffer_type = "dressing", ]]
			vim.keymap.set("n", "<leader>rn", function()
				return ":IncRename " .. vim.fn.expand("<cword>")
			end, { expr = true, desc = "Renames a variable under LSP" }),
		})
	end,
}
