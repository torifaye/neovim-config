local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format({
    -- async = true,
    timeout_ms = 2000,
    filter = function(client)
      return client.name == "null-ls"
    end,
    bufnr = bufnr
  })
end

null_ls.setup({
  sources = {
    formatting.prettier, formatting.black, formatting.gofmt, formatting.shfmt, formatting.rubocop,
    formatting.clang_format, formatting.cmake_format, formatting.dart_format, formatting.mix,
    formatting.fixjson, formatting.lua_format.with({
      extra_args = {
        '--no-keep-simple-function-one-line', '--no-break-after-operator', '--column-limit=100',
        '--break-after-table-lb', '--indent-width=2'
      }
    }), formatting.isort, formatting.codespell.with({ filetypes = { 'markdown' } })
  },
  debug = false,
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          lsp_formatting(bufnr)
        end
      })
    end
  end
})
