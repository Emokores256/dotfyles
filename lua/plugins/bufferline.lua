return {
  'akinsho/bufferline.nvim',
  version = "*",
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function ()
    vim.keymap.set({'n', 'v'}, '<leader>x', ":bd<CR>")
    vim.keymap.set('n', '<tab>', ":BufferLineCycleNext<CR>")
    vim.keymap.set('n', '<S-tab>', ":BufferLineCyclePrev<CR>")
    vim.opt.termguicolors = true
    require("bufferline").setup({
      options = {
        diagnostics = "nvim-lspconfig"
      }
    })
  end
}
