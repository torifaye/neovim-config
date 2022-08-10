require('neo-tree').setup {
  close_if_last_window = true,
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  default_component_configs = {
    indent = {with_markers = true},
    window = {position = "right", width = "fit_content"},
    filesystem = {
      filtered_items = {
        visible = true,
        hide_gitignored = true,
        hide_by_name = {"node_modules"},
        never_show = {".DS_Store", "thumbs.db"}
      }
    },
    follow_current_file = true,
    hijack_netrw_behavior = "open_default",
    use_libuv_file_watcher = true,
    buffers = {follow_current_file = true}
  }
}
