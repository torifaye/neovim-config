require('nvim-tree').setup{
  open_on_setup = true,
  view = {
    adaptive_size = true
  },
  renderer = {
    indent_markers = {
      enable = true,
    }
  },
  git = {
    enable = true,
    ignore = true,
  },
}

