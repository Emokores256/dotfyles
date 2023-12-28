-- File tree

return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	silent = true,
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
	},

	config = function()
		local opts = { silent = true, noremap = true }

		vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
		vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
		vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
		vim.fn.sign_define("DiagnosticSignHint", { text = "󰌵", texthl = "DiagnosticSignHint" })

		--keymaps
		vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal float<CR>", { desc = "Opens the file explorer" }, opts)
		vim.keymap.set(
			"n",
			"<S-n>",
			":Neotree float git_status<CR>",
			{ desc = "Shows the file git status from the explorer" },
			opts
		)

		require("neo-tree").setup({
			git_status = {
				symbols = {
					-- Change type
					added = "✚", -- or "✚", but this is redundant info if you use git_status_colors on the name
					modified = "", -- or "", but this is redundant info if you use git_status_colors on the name
					deleted = "✖", -- this can only be used in the git_status source
					renamed = "󰁕", -- this can only be used in the git_status source
					-- Status type
					untracked = "",
					ignored = "",
					unstaged = "󰄱",
					staged = "",
					conflict = "",
				},
			},
		})
	end,
}
