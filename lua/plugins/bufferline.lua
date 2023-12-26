return {
	"akinsho/bufferline.nvim",
	version = "*",
	dependencies = "nvim-tree/nvim-web-devicons",
	config = function()
		local opts = { silent = true, noremap = true }

		vim.keymap.set({ "n", "v" }, "<leader>x", ":bd<CR>", opts)
		vim.keymap.set("n", "<tab>", ":BufferLineCycleNext<CR>", opts)
		vim.keymap.set("n", "<S-tab>", ":BufferLineCyclePrev<CR>", opts)
		vim.opt.termguicolors = true
		require("bufferline").setup({
			options = {
				diagnostics = "nvim-lspconfig",
			},
		})
	end,
}
