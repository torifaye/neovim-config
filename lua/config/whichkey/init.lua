local wk = require('which-key')
local terminal = require('toggleterm.terminal').Terminal
-- local possession = require('nvim-possession')

local toggle_float = function()
  local float = terminal:new({direction = "float"})
  return float:toggle()
end

local toggle_lazygit = function()
  local lazygit = terminal:new({direction = "float", cmd = 'lazygit'})
  return lazygit:toggle()
end

local toggle_vertical_term = function()
  local term = terminal:new({direction = "vertical"})
  return term:toggle()
end

local mappings = {
  q = {':Bdelete<CR>', 'Close'},
  x = {':q<CR>', 'Quit'},
  e = {':Neotree filesystem toggle right<CR>', 'Toggle File Browser'},
  E = {':Neotree filesystem toggle float<CR>', 'Toggle Floating File Browser'},
  Q = {':xa<CR>', 'Save and Quit'},
  w = {':w<CR>', 'Save'},
  f = {':Telescope find_files<CR>', 'Find'},
  r = {':Telescope live_grep<CR>', 'Grep'},
  g = {
    name = "Git",
    g = {"<cmd>lua require('neogit').open({ kind = 'vsplit' })<cr>", "Neogit"},
    l = {toggle_lazygit, "Lazygit"}
  },
  s = {
    name = "Show",
    f = {toggle_float, "Floating Terminal"},
    g = {toggle_lazygit, "LazyGit Window"},
    v = {toggle_vertical_term, "Vertical Terminal"},
    s = {name = "Session"}
  },
  t = {
    name = "Test",
    a = {"<cmd>lua require('neotest').run.attach()<cr>", "Attach"},
    f = {"<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", "Test Whole File"},
    F = {
      "<cmd>lua require('neotest').run.run({vim.fn.expand('%'), strategy='dap'})<cr>", "Debug File"
    },
    l = {"<cmd>lua require('neotest').run.run_last()<cr>", "Run Last Test"},
    L = {"<cmd>lua require('neotest').run.run_last({ strategy = 'dap' })<cr>", "Debug Last Test"},
    n = {"<cmd>lua require('neotest').run.run()<cr>", "Run Nearest Test"},
    N = {"<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>", "Debug Nearest Test"},
    o = {"<cmd>lua require('neotest').output.open({ enter = true })<cr>", "Output"},
    S = {"<cmd>lua require('neotest').run.stop()<cr>", "Stop"},
    s = {"<cmd>lua require('neotest').summary.toggle()<cr>", "Summary"}
  },
  l = {
    name = "LSP",
    i = {":LspInfo<cr>", "Connected Language Servers"},
    k = {"<cmd>lua vim.lsp.buf.signature_help()<cr>", "Signature Help"},
    K = {"<cmd>Lspsaga hover_doc<cr>", "Hover Commands"},
    w = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<cr>', "Add Workspace Folder"},
    W = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<cr>', "Remove Workspace Folder"},
    l = {
      '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<cr>',
      "List Workspace Folders"
    }
  },
  n = {'<cmd>lua require("notify").dismiss()<cr>', "Clear Notifications"},
  d = {
    name = "Diagnostics",
    d = {":TroubleToggle document_diagnostics<CR>", "Toggle Document Diagnostics"},
    w = {":TroubleToggle workspace_diagnostics<CR>", "Toggle Workspace Diagnostics"},
    q = {":TroubleToggle quickfix<CR>", "Toggle Quickfix"}
  },
  c = {
    name = "Telescope Filters",
    c = {require('telescope.builtin').commands, "Show Commands"},
    s = {require('telescope.builtin').lsp_workspace_symbols, "LSP Workspace Symbols"}
  }
}
local opts = {prefix = '<leader>'}
wk.register(mappings, opts)
