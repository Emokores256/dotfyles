return {
  {
    "williamboman/mason.nvim",
    config = function ()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function ()
      require("mason-lspconfig").setup({
        ensure_installed = { "tsserver", "lua_ls", "intelephense", "html", "cssls", "tailwindcss", "emmet_ls" }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.cssls.setup({})
      lspconfig.tailwindcss.setup({})
      lspconfig.emmet_ls.setup({})
      lspconfig.html.setup({})
      lspconfig.intelephense.setup({
        init_options = {
          globalStoragePath = "/usr/bin/intelephense",
          licenseKey = "~/intelephense/license.txt",
        },
      })
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
  },
  {
    'hrsh7th/nvim-cmp',
    config = function ()
      require('cmp').setup({})
    end
  },

  {
    'L3MON4D3/LuaSnip', dependencies = { "rafamadriz/friendly-snippets" }, build = "make install_jsregexp",
    config = function ()
      require('luasnip').setup({})
    end
  },

  {
    "rafamadriz/friendly-snippets"
  }
}
