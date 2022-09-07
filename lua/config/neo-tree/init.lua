vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])
vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })
require('neo-tree').setup {
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,

  indent = { with_markers = true },
  window = {
    position = "right",
    width = "20%",
    popup = { size = { height = "80%", width = "50%" }, position = "50%" },
    mapping_options = { noremap = true, nowait = true }
  },
  filesystem = {
    filtered_items = {
      visible = true,
      hide_gitignored = true,
      hide_by_name = { "node_modules" },
      never_show = { ".DS_Store", "thumbs.db" }
    },
    hijack_netrw_behavior = "open_default",
    use_libuv_file_watcher = true
  },
  buffers = { follow_current_file = true }
}
vim.cmd([[nnoremap \ :Neotree reveal<cr>]])
