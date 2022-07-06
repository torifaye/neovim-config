local npairs = require('nvim-autopairs')

npairs.setup({
  check_ts = true,
})

local handlers = require('nvim-autopairs.completion.handlers')
local cmp = require('cmp')
local cmp_autopairs = require('nvim-autopairs.completion.cmp')

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done({
    filetypes = {
      -- "*" is a alias to all filetypes
      ["*"] = {
        ["("] = {
          kind = {
            cmp.lsp.CompletionItemKind.Function,
            cmp.lsp.CompletionItemKind.Method,
          },
          handler = handlers["*"]
        }
      },
      lua = {
        ["("] = {
          kind = {
            cmp.lsp.CompletionItemKind.Function,
            cmp.lsp.CompletionItemKind.Method
          },
          ---@param char string
          ---@param item item completion
          ---@param bufnr buffer number
          handler = function(char, item, bufnr)
            -- Your handler function. Inpect with print(vim.inspect{char, item, bufnr})
          end
        }
      },
      -- Disable for tex
      tex = false
    }
  })
)

npairs.add_rules(require('nvim-autopairs.rules.endwise-elixir'))
npairs.add_rules(require('nvim-autopairs.rules.endwise-lua'))
npairs.add_rules(require('nvim-autopairs.rules.endwise-ruby'))
