-- Auto-completion functionality

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-cmdline",
    "L3MON4D3/LuaSnip",
    "hrsh7th/cmp-buffer",
  },
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    require("luasnip.loaders.from_vscode").lazy_load()

    cmp.setup({
      completion = {
        completeopt = "menu, menuone, preview, noselect",
      },
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item(),    -- previous suggestion
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),  -- previous suggestion
        ["<C-j>"] = cmp.mapping.select_next_item(),    -- next suggestion
        ["<Tab>"] = cmp.mapping.select_next_item(),    -- next suggestion
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),       -- scroll backward
        ["<C-f>"] = cmp.mapping.scroll_docs(4),        -- scroll forward
        ["<C-Space>"] = cmp.mapping.complete(),        -- show completion suggestions
        ["<C-e>"] = cmp.mapping.abort(),               -- clear completion window
        ["<CR>"] = cmp.mapping.confirm({ select = true }), -- confirm selection
      }),
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- lsp
        { name = "luasnip" }, -- snippets
        { name = "buffer" }, -- text within current buffer
        { name = "path" }, -- file system paths
      }),
    })
  end,
}
