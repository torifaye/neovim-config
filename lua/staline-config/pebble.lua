require 'staline'.setup {

  sections = {
    left  = {
      ' ', 'right_sep_double', '-mode', 'left_sep_double', ' ',
      'right_sep', '-file_name', 'left_sep', ' ',
      'right_sep_double', '-branch', 'left_sep_double', ' ',
    },
    mid   = { 'lsp' },
    right = {
      'right_sep', '-cool_symbol', 'left_sep', ' ',
      'right_sep', '- ', '-lsp_name', '- ', 'left_sep',
      'right_sep_double', '-line_column', 'left_sep_double', ' ',
    }
  },

  defaults = {
    fg = "#dddddd",
    cool_symbol = "  ",
    left_separator = "",
    right_separator = "",
    -- line_column = "%l:%c [%L]",
    true_colors = true,
    line_column = "[%l:%c] 並%p%% "
    -- font_active = "bold"
  },
  mode_colors = {
    n  = "#808080",
    i  = "#808080",
    ic = "#808080",
    c  = "#808080",
    v  = "#808080" -- etc
  }
}
