return {
	"marko-cerovac/material.nvim",
	config = function()
		vim.g.material_style = "darker"
		vim.cmd("colorscheme material")
		require("material").setup({
			lualine_style = "stealth",
			plugins = { -- Uncomment the plugins that you use to highlight them
				-- Available plugins:
				"gitsigns",
				-- "harpoon",
				"indent-blankline",
				"neo-tree",
				"nvim-cmp",
				"nvim-web-devicons",
				"telescope",
				"which-key",
			},
		})
	end,
}
