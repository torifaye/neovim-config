local lspconfig = require('lspconfig')
require('mason-lspconfig').setup {
  ensure_installed = {
    "lua_ls", "rust_analyzer", "elixirls", "tsserver", "html", "cssls", "pyright", "ocamllsp",
    "sqlls", "terraform-ls"
  }
}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

capabilities.textDocument.foldingRange = {dynamicRegistration = false, lineFoldingOnly = true}

local on_attach = function(client)
  client.server_capabilities.document_formatting = false
end

-- Language server set ups
lspconfig.elixirls.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.lua_ls.setup {
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'}
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {enable = false}
    }
  }
}
lspconfig.tsserver.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.pyright.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.html.setup {
  capabilities = capabilities
  -- on_attach = on_attach,
}
lspconfig.cssls.setup {
  capabilities = capabilities
  -- on_attach = on_attach,
}

lspconfig.ocamllsp.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.rust_analyzer.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.sqlls.setup {capabilities = capabilities, on_attach = on_attach}
lspconfig.terraformls.setup {capabilities = capabilities, on_attach = on_attach}
