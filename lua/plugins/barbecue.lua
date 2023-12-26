return {
	"utilyre/barbecue.nvim",
	name = "barbecue",
	lazy = false,
	version = "*",
	dependencies = {
		"SmiteshP/nvim-navic",
		"nvim-tree/nvim-web-devicons", -- optional dependency
	},
	config = function()
		require("barbecue").setup({
			symbols = {},
			kinds = {},
		})
	end,
}
