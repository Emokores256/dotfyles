-- Show git status in file tree

return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({})
	end,
}
