-- Auto-pairing of brackets, quotes

return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({
			opts = {
				check_ts = true,
				ts_config = {
					lua = { "string" },
					javascript = { "template_string" },
					php = { "string" },
				},
			},
		})
	end,
}
