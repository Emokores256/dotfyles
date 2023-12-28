-- Git history and commit inline statements

return {
	"f-person/git-blame.nvim",
	event = "VeryLazy",
	config = function()
		require("gitblame").setup({
			opts = {
				enabled = true,
				date_format = "%m/%d/%y %H:%M:%S",
			},
		})
	end,
}
