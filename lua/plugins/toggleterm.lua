return {
  'akinsho/toggleterm.nvim', version = "*",
  config = function ()
    require("toggleterm").setup({
      border = 'shadow',
      direction = 'float',
      open_mapping = [[<C-t>]],
      -- size can be a number or function which is passed the current terminal
      size = 20
    })
  end
}
