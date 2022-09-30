require('navigator').setup {
  default_mapping = true,
  treesitter_analysis = true,
  lsp_signature_help = true,
  mason = true,
  lsp = {
    --    enable = true,
    code_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
    code_lens_action = { enable = true, sign = true, sign_priority = 40, virtual_text = true },
  }
}
