return {
	"marko-cerovac/material.nvim",
	config = function()
		vim.g.material_style = "darker"
		vim.cmd("colorscheme material")
		require("material").setup({
			lualine_style = "stealth",
		})
	end,
}
