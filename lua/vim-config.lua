vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.g.mapleader = " "
-- vim.cmd.colorscheme("material")

--keymaps
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- delete word backwards
keymap.set("n", "dw", "vb_d")

-- select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- new tab
keymap.set("n", "te", "tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<CR>", opts)
keymap.set("n", "<s-tab>", ":tabprev<CR>", opts)

--split window
keymap.set("n", "<leader>h", ":split", opts, { desc = "Splits a window horizontally" })
keymap.set("n", "<leader>v", ":vsplit", opts, { desc = "Splits a window vertically" })

--move window
keymap.set("n", "<S-left>", "<C-w>h")
keymap.set("n", "<S-up>", "<C-w>k")
keymap.set("n", "<S-right>", "<C-w>l")
keymap.set("n", "<S-down>", "<C-w>j")

-- resize window
keymap.set("n", "<C-left>", "<C-w><")
keymap.set("n", "<C-right>", "<C-w>>")
keymap.set("n", "<C-up>", "<C-w>+")
keymap.set("n", "<C-down>", "<C-w>-")

-- diagnostics
keymap.set("n", "<C-j>", function()
	vim.diagnostic.goto_next()
end, opts)
