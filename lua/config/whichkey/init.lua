local wk = require('which-key')
local terminal = require('toggleterm.terminal').Terminal

local toggle_float = function()
  local float = terminal:new({ direction = "float" })
  return float:toggle()
end

local toggle_lazygit = function()
  local lazygit = terminal:new({ direction = "float", cmd = 'lazygit' })
  return lazygit:toggle()
end

local mappings = {
  q = { ':Bdelete<CR>', 'Close' },
  x = { ':q<CR>', 'Quit' },
  e = { ':Neotree filesystem toggle right<CR>', 'Toggle File Browser' },
  E = { ':Neotree filesystem toggle float<CR>', 'Toggle Floating File Browser' },
  Q = { ':xa<CR>', 'Save and Quit' },
  w = { ':w<CR>', 'Save' },
  f = { ':Telescope find_files<CR>', 'Find' },
  r = { ':Telescope live_grep<CR>', 'Grep' },
  t = {
    name = "Terminal",
    b = { ":ToggleTerm<cr>", "Split Below" },
    f = { toggle_float, "Floating Terminal" },
    g = { toggle_lazygit, "LazyGit" }
  },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    k = { "<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help" },
    K = { "<cmd>Lspsaga hover_doc<cr>", "Hover Commands" },
    w = { '<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder" },
    W = { '<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder" },
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    }
  },
  p = {
    name = "Packer",
    r = { ":PackerClean<cr>", "Remove Unused Plugins" },
    c = { ":PackerCompile profile=true<cr>", "Recompile Plugins" },
    i = { ":PackerInstall<cr>", "Install Plugins" },
    p = { ":PackerProfile<cr>", "Packer Profile" },
    s = { ":PackerSync<cr>", "Sync Plugins" },
    S = { ":PackerStatus<cr>", "Packer Status" },
    u = { ":PackerUpdate<cr>", "Update Plugins" }
  },
  d = {
    name = "Diagnostics",
    d = { ":TroubleToggle document_diagnostics<CR>", "Toggle Document Diagnostics" },
    w = { ":TroubleToggle workspace_diagnostics<CR>", "Toggle Workspace Diagnostics" },
    q = { ":TroubleToggle quickfix<CR>", "Toggle Quickfix" }
  }
}
local opts = { prefix = '<leader>' }
wk.register(mappings, opts)
