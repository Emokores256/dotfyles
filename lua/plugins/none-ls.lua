-- Formatting and linting
return {
  "nvimtools/none-ls.nvim",

  config = function()
    local null_ls = require("null-ls")
    local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

    null_ls.setup({
      debug = true,
      sources = {
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.pint, -- for laravel php
        -- null_ls.builtins.formatting.phpcsfixer,
        -- null_ls.builtins.diagnostics.phpcs,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.markdownlint,
        null_ls.builtins.completion.cspell,
      },

      -- format on save
      on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd("BufWritePost", {
            group = augroup,
            buffer = bufnr,
            callback = function()
              -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
              -- on later version, use vim.lsp.buf.format({async = false})
              -- vim.lsp.buf.formatting_sync()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })

    vim.keymap.set("n", "<leader>mp", vim.lsp.buf.format, { desc = "Formatting a text file using LSP" })
  end,
}
