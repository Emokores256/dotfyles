-- Commenting code

return {
	"numToStr/Comment.nvim",
	lazy = false,
	config = function()
		require("Comment").setup({
			toggler = {
				line = "<leader>/",
				block = "<leader>/",
			},
		})
	end,
}
